class LevelsController < ApplicationController
  def new
    @page_title = 'Add New Level'
    @level = Level.new
  end

  def create
   @level = Level.new(level_params)
   if @level.save
      flash[:notice] = 'Level created!'
      redirect_to levels_path
  else
     render 'new'
  end
  end

  def edit
    @page_title = 'Edit Level'
    @level = Level.find(params[:id])
  end

  def update
    @level = Level.find(params[:id])
    if @level.update(level_params)
      flash[:notice] = 'Level updated'
      redirect_to levels_path
    else
      render 'edit'
    end
  end

  def destroy
    @levelt = Level.find(params[:id])
    @levelt.destroy
    flash[:notice] = 'Level deleted'

    redirect_to levels_path
  end

  def index
    @page_title = 'Levels'
    @levels = Level.all
    @departments = Department.all
  end

  def show
  end
  private
    def level_params
    params.require(:level).permit(:department_id, :level)
  end 
end
