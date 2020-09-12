class SessionsController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(email: params[:user][:email])
    if @user && @user.authenticate(params[:user][:password])
      redirect_to users_show_path
    else
      render :new
    end
  end

  def destroy
    
  end
end
