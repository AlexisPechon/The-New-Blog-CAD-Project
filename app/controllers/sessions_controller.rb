class SessionsController < ApplicationController
    def new
    end
  
    def create
        puts params.inspect
      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        # Log the user in and redirect to the user's profile page
        log_in user
        redirect_to user
      else
        # Display an error message
        flash.now[:danger] = 'You have entered an invalid email or password.'
        render 'new'
      end
    end
  
    def destroy
      log_out
      redirect_to root_url
    end
end
