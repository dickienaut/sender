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
      session[:climber_id] = climber.id
      redirect_to climber
    else
      flash[:errors] = climber.errors.full_messages
      redirect_to new_climber_path
    end
  end

  def show
    # if session["page_views"] == nil
    #   session["page_views"] = 5
    # end
    # session["page_views"] = session["page_views"] - 1
    # @page_views = session["page_views"]
    @climber = Climber.find(params[:id])
  end

  private

  def climber_params
    params.require(:climber).permit(:name, :username, :password)
  end

end
