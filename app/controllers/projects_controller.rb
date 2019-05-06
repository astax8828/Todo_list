class ProjectsController < ApplicationController
  before_action :authenticate_user!

  def index
  end

  def new
    @project = Project.new

  end

  def create
    @project = Project.new(project_params)

    @project.save
    render plain: params[:project].inspect
    # render 'new'

  end

  def delete
  end

  private

  def project_params
    params.require(:project).permit(:name_project, :project_start_date, :description)
  end
end
