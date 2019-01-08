module ApplicationHelper
    def logged_in?
        return !@user.nil?
    end
end
