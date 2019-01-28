class CommentsController < ApplicationController
  respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
before_action :find_commentable

    def new
      @comment = Comment.new
    end

    def create
      @comment = @commentable.comments.new comment_params

      if @comment.save
        redirect_to :back, notice: 'Your comment was successfully posted!'
      else
        redirect_to :back, notice: "Your comment wasn't posted!"
      end
    end
    def destroy
      @post = Post.find(params[:post_id])
      @comment = Comment.find(params[:id])
      @comment.destroy
    
      redirect_to post_path(@post)
    end
    def upvote
      @comment = Comment.find(params[:id])
      @comment.upvote_by current_user
     render :template => "comments/votes"
    end
    def downvote
      @comment = Comment.find(params[:id])
      @comment.downvote_by current_user
        render :template => "comments/votes"    end
    private

    def comment_params
      params.require(:comment).permit(:body, :user_id)
    end

    def find_commentable
      @commentable = Comment.find_by_id(params[:comment_id]) if params[:comment_id]
      @commentable = Post.find_by_id(params[:post_id]) if params[:post_id]
    end
    

end