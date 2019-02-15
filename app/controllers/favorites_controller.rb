class FavoritesController < ApplicationController
  before_action :set_post
  
  def create
    # @post=Post.find(params[:post_id])
    if Favorite.create(favorited: @post, user: current_user)
      redirect_to @post, notice: 'Post has been favorited'
      #@favorites = @create.favorites
    else
      redirect_to @post, alert: 'Something went wrong...*sad panda*'
    end
  end
  
  def destroy
    Favorite.where(favorited_id: @post.id, user_id: current_user.id).first.destroy
    redirect_to @post, notice: 'Post is no longer in favorites'
  end
  
  def index
		@favorites = Favorite.all
  end
	
  def show
    @favorites = Favorite.find(params[:id])
  end
  
  private
  
  def set_post
    if params[:id].nil?
      return
    else
    @post = Post.find(params[:post_id] || params[:id])
  end
  end
end