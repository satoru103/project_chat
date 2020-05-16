class TodolistsController < ApplicationController
  before_action :set_project

  def inedex
  end

  def create
    @todolist = @project.todolist.new(todolist_params)
    if @todolist.save
      redirect_to @todolist
    else
      render "new"
  end

  def edit
  end

  def update
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
