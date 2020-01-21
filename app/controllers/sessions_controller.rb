class SessionsController < ApplicationController
  skip_before_action :authorize

  def new
    signed_in?
  end

  def create
    signed_in?
    user = User.find_by(name: params[:name])
    if user and user.authenticate(params[:password])
      session[:user_id] = user.id.to_s
      redirect_to '/'
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to '/', notice: "Logged out"
  end

  private

  def signed_in?
    redirect_to '/', notice: "You are already logged in" unless session[:user_id].nil?
  end
end