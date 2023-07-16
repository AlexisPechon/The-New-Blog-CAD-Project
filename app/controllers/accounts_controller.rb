class AccountsController < ApplicationController
  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)

    if @account.save
      redirect_to login_path, notice: 'You have successfully created your account'
    else
      render :new
    end
  end

  def login
    @account = Account.new
  end

  def authenticate
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_path, notice: 'Logged in successfully.'
    else
      flash.now[:alert] = 'Invalid email or password.'
      render :login
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to root_path, notice: 'You are now logged out.'
  end

    private
    def account_params
      params.require(:account).permit(:email, :password, :password_confirmation)
  end
end
