module ApplicationHelper
    def log_in(user)
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
        
        !current_user.nil?
    end
    def get_username(userid)
        if(userid.nil?)
            return ""
        end
        @user = User.find(userid)
        return @user.username
        rescue ActiveRecord::RecordNotFound
            return ""
    end
    
    def check_permissions(id)
        if(current_user.nil?)
            return false
        elsif(current_user.id==id)
            return true
        else
            return false
        end
    end
    
    def check_time_permissions(id, post_id)
        if(current_user.nil?)
            return false
        elsif(current_user.id==id)
            
            current = Time.now.utc
            created= Post.find(post_id).created_at
            a= current-created
            difference=a / 60
            if(difference<5)
                
                return true
            else
                return false
            end
        else
            return false
        end
    end
    def get_votes_class(id)
        return "votes_#{id}"
    end
    def get_channel_name(id)
        @channel = Channel.find(id)
        return @channel.channel_name
        rescue ActiveRecord::RecordNotFound
            return ""
    end
    def class_finder(id)
         @post = Post.find(id)
        if(@post.link != "")
            return "popular"
        else
            return "new"
        end
        rescue ActiveRecord::RecordNotFound
            return "new"
    end
end
