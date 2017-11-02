class CalendarsController < ApplicationController
  before_action :authenticate_user!

  def host
    @rooms = current_user.rooms

    params[:start_date] ||= Date.current.to_s
    params[:room_id] ||= @rooms[0] ? @rooms[0].id : nil

    if params[:room_id]
      @room = Room.find(params[:room_id])
      start_date = Date.parse(params[:start_date])

      # Get the calendar in 3 month period
      first_of_month = (start_date - 1.months).beginning_of_month # => eg. 1st Jun
      end_of_month = (start_date + 1.months).end_of_month # => eg. 31st Aug

      # SQL query
      @events = @room.reservations.joins(:user)
                      .select('reservations.*, users.fullname, users.image, users.email')
                      .where('(start_date BETWEEN ? AND ?) AND status <> ?', first_of_month, end_of_month, 2) # Ignore Declined: 2
    else
      @room = nil
      @events = []
    end
  end
end
