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
      flash.now[:danger] = "メールアドレス、またはパスワードが間違っています。"
      render :new
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_path
  end

  # def logout
  #   session[:user_id] = nil
  #   redirect_to root_path
  # end

end
