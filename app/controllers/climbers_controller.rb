class ClimbersController < ApplicationController
  def index
    @climbers = Climber.all
  end

  def new
    @climber = Climber.new
  end

  def create
    climber = Climber.create(climber_params)
    if climber.valid?
      redirect_to climber
    else
      flash[:errors] = climber.errors.full_messages
      redirect_to new_climber_path
    end
  end

  def show
    @climber = Climber.find(params[:id])
  end

  private

  def climber_params
    params.require(:climber).permit(:name)
  end

end
