module ApplicationHelper
    def log_in(user)
    puts "initial"
    session[:user_id] = user.id
    end
    def log_out
    session.delete(:user_id)
    @current_user = nil
    end
    def current_user
        return unless session[:user_id]
        @current_user ||= User.find(session[:user_id])
        rescue ActiveRecord::RecordNotFound
            session.delete(:user_id)
            @current_user = nil
    end
    # Returns true if the user is logged in, false otherwise.
    def logged_in?
        puts "login"
        !current_user.nil?
    end
    def get_username(userid)
        if(userid.nil?)
            return ""
        end
        @user = User.find(userid)
        return @user.name
    end
    def check_permissions(id)
        if(current_user.id==id)
            return true
        else
            return false
        end
    end
    
end
