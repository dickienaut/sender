class ClimbsController < ApplicationController
  require 'json'

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
    @climb = Climb.find(params[:id])
    @tick = Tick.new
    @weather = RestClient::Request.execute(
      method: :get,
      url: "https://api.openweathermap.org/data/2.5/weather?q=#{@climb.location}",
      headers: {params: {APPID: 'c73f08fee93fdb4ccc020fc6777b9b11'}})
    @weather = JSON.parse(@weather)
  end

  private

  def climb_params
    params.require(:climb).permit(:name, :length, :difficulty, :location)
  end

end
