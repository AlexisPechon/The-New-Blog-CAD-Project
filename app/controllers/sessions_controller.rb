class SessionsController < ApplicationController

  #The purpose of the SessionsController class is to demonstrate the use of Sessions and Cookies inside
  #of my Rails application. This is primarily used to handle the user login and logout activity
  #within the webpage.

  #@Reference: https://dev.to/kjdowns/creating-a-user-login-system-ruby-on-rails-2kl2

    # def new
    #   @user = User.new
    # end

    def create
      #The following method documents my attempts at allowing the user to create
      #their username and password.
      #The code that is commented out below shows the different attempts I have made
      #to make this code work with its intended functionalities.

      #The purpose of this method was to allow the user to create their account when
      #they provide the appropriate information such as their email and password.

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
      #The destroy method will be executed once the user logs out of their account
      log_out
      redirect_to root_url
    end
end
