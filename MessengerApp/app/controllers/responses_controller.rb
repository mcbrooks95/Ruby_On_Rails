class ResponsesController < ApplicationController

	def create
		binding.pry		
		#@response = Response.new(params[:responses]) 
		@response = Response.new(:content => params[:response]["content"],
			:message_id => params[:id])
	    #logger.debug
	    #logger.info
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
