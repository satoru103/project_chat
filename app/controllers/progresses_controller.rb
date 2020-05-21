class ProgressesController < ApplicationController
  def create
    @progress=Progree.new(progree_params)
  end

  def destroy
  end


  private
  def progress_params
    params.require(:progress).permit(:progress)
  end
end
