class ViewchannelController < ApplicationController
    def index
        # remove old entries here
        Viewchannelinfo.delete_all
        Viewchannelpost.delete_all
        
        channel_name = "cats"
        
        channelInfo = Channel.where("channel_name = '#{channel_name}'")
        Viewchannelinfo.create(channelInfo.as_json)
        
        channelpost = JSON.parse(channelInfo.to_json)[0]["postid"]
        
        postArray = channelpost.split(",")
        postArray.each do |i|
            Viewchannelpost.create(postid:i)
        end
    end
end
