class PostsController < ApplicationController
    respond_to do |format|
      format.js {render layout: false} # Add this line to you respond_to block
    end
    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
    end
    def create
      @post = Post.new(post_params)
      if @post.save
       flash[:notice] = "Post was successfully created"
       redirect_to post_path(@post)
      else
       render 'new'
      end
    end
    def edit
      @post = Post.find(params[:id])
    end
    def update
      @post = Post.find(params[:id])
      if @post.update(post_params)
       flash[:notice] = "Post was updated"
       redirect_to post_path(@post)
      else
       flash[:notice] = "Post was not updated"
       render 'edit'
      end
    end
    def show
        @post = Post.find(params[:id])
    end
    def upvote
      @post = Post.find(params[:id])
      @post.upvote_by current_user
     render :template => "posts/votes"
    end
    def downvote
      @post = Post.find(params[:id])
      @post.downvote_by current_user
        render :template => "posts/votes"    end
    
    private
    def post_params
        params.require(:post).permit(:channel_id, :title, :content, :link, :user_id)
    end
end
