class PostsController < ApplicationController
  def new
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
  end

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update_attributes(post_params)
      redirect_to posts_show_path(@post.id)
    end
  end

  private
    def post_params
      params.require(:post).permit(
        :content
      )
    end
end
