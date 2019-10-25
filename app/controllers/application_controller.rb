class ApplicationController < ActionController::Base
  before_action :set_current_climber


  def set_current_climber
    @current_climber = Climber.find_by(id: session[:climber_id])
  end

end
