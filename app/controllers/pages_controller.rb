class PagesController < ApplicationController
  def home
    @rooms = Room.where(active: true).limit(3)
  end

  def search
    # Step 1 - search present & not empty; remember the search location then search
    if params[:search].present? && params[:search].strip != ""
      session[:loc_search] = params[:search]
    end

    # Step 2 - if value of location present, search the location and the nearbys(5km); else get all the active rooms in the database
    if session[:loc_search] && session[:loc_search] != ""
      @rooms_address = Room.where(active: true).near(session[:loc_search], 5, order: 'distance')
    else
      @rooms_address = Room.where(active: true).all
    end

    # Step 3 - use ransack search - pages search every q[]
    @search = @rooms_address.ransack(params[:q])
    @rooms = @search.result

    @arrRooms = @rooms.to_a

    # Step 4 - find the rooms that fit the timeframe
    if (params[:start_date] && params[:end_date] && !params[:start_date].empty? && !params[:end_date].empty?)

      start_date = Date.parse(params[:start_date])
      end_date = Date.parse(params[:end_date])

      @rooms.each do |room|
        not_available = room.reservations.where(
          "(? <= start_date AND start_date <= ?)
          OR (? <= end_date AND end_date <= ?)
          OR (start_date < ? AND ? < end_date)",
          start_date, end_date,
          start_date, end_date,
          start_date, end_date
        ).limit(1)

        if not_available.length > 0
          @arrRooms.delete(room)
        end
      end
    end

  end
end
