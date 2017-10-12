class RoomController < ApplicationController
  before_action :set_room, except: [:index, :new, :create]

  def index
    @rooms = current_user.rooms
  end

  def new
    @room = current_user.rooms.build
  end

  def create
    @room = current_user.rooms.build(room_params)
  end

  def listing
  end

  def pricing
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def location
  end

  def update
  end

  private
  def set_room
    @room = Room.find(params[:id])
  end
end
