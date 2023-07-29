module SessionsHelper
  #This file helps with controlling the Session and Cookies of the webpage by handling the user login and logout activity.
    def log_in(user)
        session[:user_id] = user.id
      end
    
      def current_user
        @current_user ||= User.find_by(id: session[:user_id])
      end
    
      def logged_in?
        !current_user.nil?
      end
    
      def log_out
        session.delete(:user_id)
        @current_user = nil
      end
end
