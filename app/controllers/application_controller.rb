class ApplicationController < ActionController::Base
  private

  def logged_in?
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user.present?
  end

  helper_method :logged_in?
end
