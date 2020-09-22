class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to posts_index_path
    end
  end

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find_by(id: params[:id])
    @user = User.find_by(id: @post.user_id)
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

  def delete
    @post = Post.find_by(id: params[:id])
    if @post
      @post.del_flg = 1
      if @post.save
        redirect_to posts_index_path
      end
    end
  end

  private
    def post_params
      params.require(:post).permit(
        :content
      )
    end

    # def post_params_id
    #   params.require(:post).permit(
    #     :content,
    #     :user_id
    #   )
    # end
end
