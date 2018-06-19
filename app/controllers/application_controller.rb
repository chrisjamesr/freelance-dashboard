class ApplicationController < ActionController::API
  protect_from_forgery with: :null_session, if: Proc.new {|c| c.request.format.json? }
  # def current_user
  #   @user = User.find_by(:id => session[:user_id]) unless nil
  # end
  
end
