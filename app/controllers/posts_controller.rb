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
    private
    def post_params
        params.require(:post).permit(:title, :description)
    end
end
