module UsersHelper
  def user_signed_in?
    !session[:user_id].nil?
  end

  def user_is_admin?
    session[:role] == 'admin'
  end
end