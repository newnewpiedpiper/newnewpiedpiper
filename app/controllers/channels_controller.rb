class ChannelsController < ApplicationController
    def new
    end
 
  def create
    @channel = Channel.new(params[:channel])
 
    @channel.save
    redirect_to @channel
  end
  def show
      @channel = Channel.find(params[:id])
  end
  private
  def channel_params
    params.require(:channel).permit(:title, :description)
  end
end
