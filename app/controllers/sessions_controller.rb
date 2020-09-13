class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      log_in @user
      redirect_to users_show_path(@user.id)
    else
      render :new
    end
  end

  def destroy
    log_out
    redirect_to root_path
  end
end
