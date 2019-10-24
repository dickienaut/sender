class ClimbsController < ApplicationController
  require 'json'
  before_action :set_climb, only: [:show]

  def index
    @climbs = Climb.all
  end

  def new
    @climb = Climb.new
  end

  def create
    climb = Climb.create(climb_params)
    if climb.valid?
      redirect_to climb
    else
      flash[:errors] = climb.errors.full_messages
      redirect_to new_climb_path
    end
  end

  def show
    # set_climb see above
    @tick = Tick.new
    @weather = RestClient::Request.execute(
      method: :get,
      url: "https://api.openweathermap.org/data/2.5/weather?q=#{@climb.location}",
      headers: {params: {APPID: ENV['APPID']}})
    @weather = JSON.parse(@weather)
  end

  private

  def set_climb
    @climb = Climb.find(params[:id])
  end


  def climb_params
    params.require(:climb).permit(:name, :length, :difficulty, :location)
  end

end
