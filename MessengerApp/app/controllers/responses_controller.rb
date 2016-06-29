class ResponsesController < ApplicationController

	def create
		
		@response = Response.new(params[:responses]) 
	    logger.debug
	    logger.info
	    if @response.save 
            redirect_to '/messages' 
  	    else 
    	    render 'new' 
        end 

	end

	def new
		@response = Response.new
	end





end
