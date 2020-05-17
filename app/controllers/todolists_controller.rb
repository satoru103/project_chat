class TodolistsController < ApplicationController
  before_action :set_project,only:[:create,:show]


  def inedex
  end

  def create
    @todolist = @project.todolist.create(todolist_params)
    redirect_to @todolist
  end

  def destroy
  end

  private
  def set_project
    @project = Project.find(params[:project_id])
  end

  def todolist_params
    params.require(:todolist).permit(:todolist_name,:body)
  end
end
