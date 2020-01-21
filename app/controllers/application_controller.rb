class ApplicationController < ActionController::Base
  before_action :authorize

  protected

  def current_user
    raise 'Session user not found' if session[:user_id].nil?
    user = User.find_by(id: session[:user_id])
    user.nil? ? raise('User user not found') : user
  end

  def authorize
    if session[:user_id].nil? || !User.find_by(id: session[:user_id])
      redirect_to login_path, notice: "Please log in"
    end
  end
end
