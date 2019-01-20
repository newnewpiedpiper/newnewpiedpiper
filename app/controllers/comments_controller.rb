class CommentsController < ApplicationController
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
    def create
        @post = Post.find(params[:post_id])
        if !logged_in?
            flash[:notice] = "You must be logged in to comment"
        else
             @comment = @post.comments.create(params[:comment].permit(:body, :user_id))
        end
        redirect_to post_path(@post)
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
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

end