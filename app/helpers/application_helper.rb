module ApplicationHelper
    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
    end
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        puts "login"
        !current_user.nil?
    end
    def get_username(userid)
        @user = User.find(userid)
        return @user.name
    end
    
end
