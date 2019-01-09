class UpvotesController < ApplicationController
    before_action :find_post
    before_action :find_upvote, only: [:destroy]
    def already_upvoted?
      Upvote.where(user_id: current_user.id, post_id:
      params[:post_id]).exists?
    end
    
    def create
      if @user.nil?
        flash[:notice] = "You must be logged in to upvote"
      elsif already_upvoted?
        flash[:notice] = "You can't upvote more than once"
      else
        @upvote = Upvote.new(secure_params)
        @upvote.post = Post.find(params[:post_id])
        if @upvote.save
          respond_to do |format|
            format.html { redirect_to @upvote.post }
            format.js # we'll use this later for AJAX!
            end
        end
      end
    end

    def find_upvote
       @upvote = @post.upvotes.find(params[:id])
    end
    def destroy
      if !(already_upvoted?)
        flash[:notice] = "Cannot unupvote"
      else
        @upvote.destroy
      end
      redirect_to post_path(@post)
    end
  private
  def find_post
    @post = Post.find(params[:post_id])
  end
  private
    def secure_params
      params.require(:upvote).permit(:user)
    end
end
