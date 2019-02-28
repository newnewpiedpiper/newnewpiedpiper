class SearchController < ApplicationController
  def search
      if params[:search].blank?  
        redirect_to(root_path, alert: "Empty field!") and return  
      else 
        @results = Post.where('title LIKE ?', "%#{params[:search]}%")
        @channel_results= Channel.where('channel_name LIKE ?', "%#{params[:search]}%")
      end  
  end
end
