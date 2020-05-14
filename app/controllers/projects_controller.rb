class ProjectsController < ApplicationController
  def index
    @project = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)
    if @project.save
      redirect_to root_path,notict:"プロジェクトを作成しました"
    else
      render "new"
    end
  end

  def show
    @projcet = Project.find(params[:id])
  end

  private
  def project_params
    params.require(:project).permit(:id,:name)
  end
end
