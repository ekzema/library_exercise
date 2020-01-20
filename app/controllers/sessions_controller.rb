class SessionsController < ApplicationController
  #skip_before_action :authorize

  def new
  end

  def create
    user = User.find_by(name: params[:name])
    ap user.id.BSON::ObjectId
    if user and user.authenticate(params[:password])
      session[:user_id] = user._id
      session[:user_name] = user.name
      redirect_to '/'
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to store_url, notice: "Logged out"
  end

end