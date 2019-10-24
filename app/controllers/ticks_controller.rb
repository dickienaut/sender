class TicksController < ApplicationController
  def index
    @ticks = Tick.all
  end

  def new
    @tick = Tick.new
  end

  def create
    @tick = Tick.create(tick_params)
    # climb = Climb.find(tick_params[:climb_id])
    if @tick.valid?
      redirect_to climb_path(@tick.climb)
    else
      flash[:errors] = @tick.errors.full_messages
      redirect_to climbers_path
    end
  end

  def show
    @tick = Tick.find(params[:id])
  end

  private

  def tick_params
    params.require(:tick).permit(:climber_id, :climb_id)
  end
end
