class MessagesController < ApplicationController

    def home
    end

    def index
        @messages = Message.all
    end

    def new
	   @message = Message.new
    end

    def create 
  	    @message = Message.new(message_params) 
	    if @message.save 
            redirect_to '/messages' 
  	    else 
    	    render 'new' 
        end 
    end



    def destroy
        @message = Message.find(params[:id])
        @message.destroy
        redirect_to messages_path
    end

    def show
        @message = Message.find(params[:id])
	    @responses = @message.responses
        @id = params[:id]
        @link = "/messages/" + @id + "/new/Response"
        #@response = Response.new
	    #@responses = Response.find_by message_id: params[:id]
    end

    private 
        def message_params 
    	    params.require(:message).permit(:content) 
    	end
end
