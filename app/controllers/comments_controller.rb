class CommentsController < ApplicationController
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

end