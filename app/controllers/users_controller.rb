class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def new
    @user = User.new
  end
  def create
    @user = User.new(user_params)
    if @user.save
      log_in(@user)
      redirect_to users_index_path
    else
      render :new
    end
  end


  def edit
    @user = User.find_by(id: params[:id])
  end
  def update
    @user = User.find_by(id: params[:id])
    if @user.update_attributes(user_params)
      redirect_to users_show_path(@user.id)
    end
  end



  def show
    @user = User.find_by(id: params[:id])
  end

  def delete
    @user = User.find_by(id: params[:id])
    if @user
      @user.del_flg = 1
      if @user.save
        redirect_to users_index_path
      end
    end
  end

  private
  def user_params
    params.require(:user).permit(
      :name,
      :email,
      :password,
      :password_confirmation
    )
  end

end
