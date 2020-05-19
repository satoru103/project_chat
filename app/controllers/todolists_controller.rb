class TodolistsController < ApplicationController
  before_action :set_project,only:[:index,:create,:show,:destroy]

  def inedex
  end

  def create
    @todolist = @project.todolists.create(todolist_params)
    redirect_to @project
  end

  def destroy
    @todolist = @project.todolists.find(params[:id])
    @todolist.destroy
    redirect_to @project
  end

  private
  def set_project
    @project = Project.find(params[:project_id])
  end


  def todolist_params
    params.require(:todolist).permit(:project_id,:todolist_name)
  end
end
