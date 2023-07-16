class SessionsController < ApplicationController
    # def new
    # end

    def create
      # @user = User.find_by(email: params[:email]="arpechon@outlook.com")
      @user = User.find_by(email: "arpechon@outlook.com")
      # if @user && @user.authenticate(params[:password]="aaaa")
      if @user && @user.authenticate("1234")
        # Log the user in and redirect to the root URL.
        #log_in user
        redirect_to root_url
      else
        # Displays an Error Message when something goes wrong during the login process.
        errorMessage = 'Something went terribly wrong. We apologise for the inconvenience...'
        redirect_to login_path, notice: errorMessage 
        #render 'new'
      end
    end
  
    def destroy
      log_out
      redirect_to root_url
    end
end
