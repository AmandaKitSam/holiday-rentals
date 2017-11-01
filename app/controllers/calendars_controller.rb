class CalendarsController < ApplicationController
  before_action :authenticate_user!

  def host
    @rooms = current_user.rooms

    params[:start_date] ||= Date.current.to_s
    
  end
end
