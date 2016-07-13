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

	def show
		#binding.pry
	end

	def destroy
		#binding.pry
		@response = Response.find(params[:id])
		@response.destroy
		redirect_to '/messages'
	end



end
