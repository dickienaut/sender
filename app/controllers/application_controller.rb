class ApplicationController < ActionController::Base
  before_action :set_current_climber
  before_action :authorized



  private

  def authorized
    if @current_climber == nil
      redirect_to login_path
    end
  end


  def set_current_climber
    @current_climber = Climber.find_by(id: session[:climber_id])
  end

end
