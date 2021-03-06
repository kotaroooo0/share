module ApplicationHelper

  include SessionsHelper
  include ItemsHelper

  def logged_in_user?
    return if logged_in?
    store_location
    flash[:success] = "ログインしてください"
    redirect_to login_url
  end

  def correct_user?
    return if current_user.id == session[:user_id]
    store_location
    flash[:success] = "正しいユーザーではありません"
    redirect_to root_url
  end

end
