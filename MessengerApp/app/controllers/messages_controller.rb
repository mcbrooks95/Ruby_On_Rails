class MessagesController < ApplicationController

    def home
        if(session[:user_id] != nil)
            redirect_to '/messages'
        end
    end

    def index
        #binding.pry
        if(session[:user_id] == nil)
            redirect_to '/'
        else
            @messages = Message.order("created_at DESC")
            #@user = User.find(@messages[0][:user_id])

        end
    end

    def new
	   @message = Message.new
    end

    def create 
  	    @message = Message.new(message_params)
        @message.user_id = session[:user_id] 
	    if @message.save 
            redirect_to '/messages' 
  	    else 
    	    render 'new' 
        end 
    end



    def destroy
        @message = Message.find(params[:id])

        #:all, :conditions => { :friends => ["Bob", "Steve", "Fred"] }
        #binding.pry
        @responses = Response.where(user_id: @message.user_id)
        @responses.each do |r|
            r.destroy
        end
        @message.destroy
        redirect_to messages_path
    end

    def show
        #binding.pry
        @message = Message.find(params[:id])
	    @responses = @message.responses
        @user = User.find(@message.user_id)
        @id = params[:id]
        @link = "/messages/" + @id + "/new/Response"
        #@response = Response.new
	    #@responses = Response.find_by message_id: params[:id]
    end

    def edit
        #binding.pry
        @message = Message.find(params[:id])        
    end

    def update
        #binding.pry
        @message = Message.find(params["id"])
        @message.content = params["message"]["content"]
        #@message.touch
        @message.save
        redirect_to "/messages"
    end

    private 
        def message_params 
    	    params.require(:message).permit(:content, :user_id) 
    	end
end
