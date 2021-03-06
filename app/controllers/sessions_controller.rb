class SessionsController < ApplicationController

  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if @user && @user.authenticate(params[:session][:password])
      log_in @user
      redirect_back_or @user
    else
      flash.now[:danger] = "有効でないメールアドレスまたはパスワードです"
      render 'new'
    end
  end

  def destroy
    log_out if logged_in?
    redirect_to root_url
  end

end
