class TasksController < ApplicationController

  def create
    task = Task.new(task_params)
    render json: task
  end

  def index
    task = Task.where(user_id: params[:user_id], project_id: params[:project_id])
    render json: task
  end

  def show
    task = Task.find(params[:id])
    render json: task
  end

  def update
    task = Task.find(params[:id])
    if task.update(task_params)
      render json: task
    end
  end

  def destroy
    task = Task.find(params[:id])
    task.destroy
  end

  private

  def task_params
    params.require(:task).permit(:project_id, :task_name)
  end  
end
