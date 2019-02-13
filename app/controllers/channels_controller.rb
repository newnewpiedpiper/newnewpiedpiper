class ChannelsController < ApplicationController
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
    def new
        @channel = Channel.new
    end
    def create
      @channel = Channel.new(channel_params)
      if @channel.save
       flash[:notice] = "Channel was successfully created"
       redirect_to channel_path(@channel)
      else
       render 'new'
      end
    end
  def show
      @channel = Channel.find(params[:id])
  end
  def subscribe
        if current_user.nil?
            flash[:notice] = "You must be logged in to subscribe"
        else
            @channel = Channel.find(params[:id])
            user= User.find(current_user.id)
            sub_nums= user.subscriptions + @channel.id.to_s + ", "
            user.subscriptions=sub_nums
            user.save!
        end
        
        render :template => "channels/subscribe"
    end
    def unsubscribe
        if current_user.nil?
            flash[:notice] = "You must be logged in to unsubscribe"
        else
            @channel = Channel.find(params[:id])
            user= User.find(current_user.id)
            sub_nums= user.subscriptions
            sub_nums.remove(", "+@channel.id.to_s + ",")
            user.subscriptions=sub_nums
            user.save!
        end
        
        render :template => "channels/subscribe"
    end
  
  
  
  
  private
  def channel_params
    params.require(:channel).permit(:channel_name, :channel_description, :channel_guidelines, :channel_image)
  end
    
end
