module SessionsHelper

  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def current_user?(user)
    user == current_user
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end

  def redirect_back_or(default)
    redirect_to(session[:forwording_url] || default)
    session.delete(:forwording_url)
  end

  def store_location
    session[:forwording_url] = request.original_url if request.get?
  end

end
