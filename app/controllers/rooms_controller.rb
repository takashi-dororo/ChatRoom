class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    @current_user
  end

  def show
    @room = Room.find(params[:id])
  end

  def new
    @room = Room.new
  end

  def create
    Room.create(room_params)
    redirect_to(rooms_path)
  end

  def destroy

  end

  private

    def room_params
      params.require(:room).permit(:name)
    end
end
