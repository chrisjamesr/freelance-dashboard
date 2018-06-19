class UsersController < ApplicationController

  def create
    binding.pry
    user = User.new(user_params)
      if user.save 
        
        render json: user
      else
        # render something else
        # render json: user.errors
    end
  end

  def show
    user = User.find(params[:id])
    render json: user 
  end

  def index
    users = User.all
    render json: users
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: user
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password)
  end

end
