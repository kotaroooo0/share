module ApplicationHelper

  include SessionsHelper

  def logged_in_user?
    return if logged_in?
    store_location
    flash[:info] = "ログインしてください"
    redirect_to login_url
  end

  def correct_user?
    return if current_user.id == session[:user_id]
    store_location
    flash[:info] = "正しいユーザーではありません"
    redirect_to root_url
  end

end
