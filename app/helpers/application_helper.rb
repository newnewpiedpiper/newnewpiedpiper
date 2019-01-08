module ApplicationHelper
    def logged_in?
        return !@user.email.nil?
    end
end
