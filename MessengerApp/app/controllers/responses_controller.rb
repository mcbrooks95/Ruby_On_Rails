class ResponsesController < ApplicationController

	def create
		#binding.pry		
		#@response = Response.new(params[:responses]) 
		@response = Response.new(:content => params[:response]["content"],
			:message_id => params[:id], :user_id => session[:user_id])
	    #logger.debug
	    #logger.info
	    if @response.save 
            redirect_to '/messages/' + params[:id] 
  	    else 
    	    render 'new' 
        end 

	end

	def new
		@response = Response.new
	end

	def edit
		#binding.pry
		@response = Response.find(params[:id])
		@message_id = params[:message_id]
		@id = params[:id]
		@response_path = "/messages/" + @message_id.to_s + "/Response/" + @id.to_s
	end

	def destroy
		#binding.pry
		@response = Response.find(params[:id])
		@response.destroy
		redirect_to '/messages/' + params[:message_id]
	end

	def update
		#binding.pry
		@response = Response.find(params[:id])
		@response.content = params["response"]["content"]
		if @response.save
			redirect_to "/messages/" + params[:message_id]
		else
			alert('error editing response')
		end
	end

end
