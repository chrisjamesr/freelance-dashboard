class ApplicationController < ActionController::API

  def current_user
    @user = User.find_by(:id => session[:user_id]) unless nil
  end
  
end
