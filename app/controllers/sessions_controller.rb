class SessionsController < ApplicationController
    # def new
    #   @user = User.new
    # end

    def create
      #The following method documents my attempts at allowing the user to create
      #their username and password.
      #The code that is commented out below shows the different attempts I have made
      #to make this code work with its intended functionalities.

      # # @user = User.find_by(email: params[:email]="arpechon@outlook.com")
      # @user = User.find_by(email: "arpechon@outlook.com")
      # # if @user && @user.authenticate(params[:password]="aaaa")
      # if @user && @user.authenticate("1234")
      #   # Log the user in and redirect to the root URL.
      #   #log_in user
      #   redirect_to root_url

      # @user = User.find_by(email: params[:session][:email].downcase)
      # if @user && @user.authenticate(params[:session][:password])
      #   log_in user
      #   redirect_to root_url
      # else
      #   # Displays an Error Message when something goes wrong during the login process.
      #   errorMessage = 'Something went terribly wrong. We apologise for the inconvenience...'
      #   redirect_to login_path, notice: errorMessage 
      #   #render 'new'
      #   end
      # end 

      # user = User.new(user_params)

      # if user.save
      #   log_in user
      #   redirect_to root_url

      user = User.find_by(email: params[:session][:email].downcase)
      if user && user.authenticate(params[:session][:password])
        log_in user
        redirect_to root_url
        #render 'new'
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
