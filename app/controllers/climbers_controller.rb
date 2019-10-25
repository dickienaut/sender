class ClimbersController < ApplicationController
  before_action :set_climber, only: [:show, :edit, :update, :destroy]
  before_action :authorize_climber, only: [:edit, :update, :destroy]
  skip_before_action :authorized, only: [:new, :create]



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
    # @climber = Climber.find(params[:id])
  end


  def edit
    # @climber = Climber.find(params[:id])
    render :edit
  end


  def update
    # @climber = Climber.find(params[:id])
    @climber.update(climber_params)

    redirect_to @climber
  end


  def destroy
    # @climber = Climber.find(params[:id])
    @climber.destroy

    redirect_to climbs_path
  end

  private

  def authorize_climber
    if @climber != @current_climber
      redirect_to climbs_path
    end
  end


  def climber_params
    params.require(:climber).permit(:name, :username, :password)
  end


  def set_climber
    @climber = Climber.find(params[:id])
  end
end
