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
      redirect_to users_index_path
    else
      render :new
    end
  end


  def edit
  end
  def update
    @user.update_attributes(users_update_path)
  end



  def show
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
