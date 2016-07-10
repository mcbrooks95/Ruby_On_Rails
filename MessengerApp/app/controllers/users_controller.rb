class UsersController < ApplicationController

	before_action :require_user, only: [:index, :show]

	def new
  		@user = User.new
      
	end


	def create
		  #binding.pry
    	@user = User.new(user_params)


      if((User.where(email: @user.email).length != 0))
        #flash.now[:alert] = 'email account already taken'
        redirect_to signup_path(:error => 'email account already taken')
    	elsif (@user.save)
    	  session[:user_id] = @user.id
    	  redirect_to '/'
	    else
    		redirect_to signup_path(:error => 'invalid signup')
    	end
  	end
  
  	private
  		def user_params
  		params.require(:user).permit(:first_name, :last_name, :email, :password)
    end



end
