class SessionsController < ApplicationController

   def create
    user = User.find(params[:id])
    if user && user.authenticate(params[:user][:password])
      set_session
      redirect_to user_path(current_user)
    else
      render json: user.errors
    end

  end

  def destroy
    reset_session
  end
  
end
