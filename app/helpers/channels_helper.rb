module ChannelsHelper
    def check_subcription(id)
        if current_user.nil?
            return false
        elsif current_user.subscriptions.include? id.to_s+","
            return true
        else
            return false
        end
    end
end
