class ProjectsController < ApplicationController
  before_action :set_project,only:[:show]

  def index
    @project = Project.all
    @projects = Project.new
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path,notice:"プロジェクトを作成しました"
    else
      render "new"
    end
  end

  def show
  end

  private

  def set_project
    @project = Project.find(params[:id])
  end

  def project_params
    params.require(:project).permit(:id,:name)
  end
end
