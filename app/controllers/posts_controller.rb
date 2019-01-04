class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    def new
        @post = Post.new
    end
    def create
      #render plain: params[:post].inspect
      @post = Post.new(post_params)
      @post.save
      redirect_to posts_show(@post)
    end
    def show
        @post = Post.find(params[:id])
    end
    private
    def post_params
        params.require(:post).permit(:title, :description)
    end
end
