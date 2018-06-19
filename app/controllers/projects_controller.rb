class ProjectsController < ApplicationController

  def create
    current_user.projects.build(project_params)

  end

  def index
    project = Project.where(user_id: current_user.id)
    render json: project
  end

  def show
    project = Project.find(params[:id])
    render json: project
  end

  def update
    project = Project.find(params[:id])
    if project.update(project_params)
      render json: project
    end
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
  end

  private

  def project_params
    params.require(:project).permit(:user_id, :client_id, :project_name)
  end
end
