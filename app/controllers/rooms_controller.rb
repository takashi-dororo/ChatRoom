class RoomsController < ApplicationController

  def index
    @rooms = Room.all
    @current_user
  end

  def show
    @room = Room.find(params[:id])
    # エラー
    @tag = @room.tags
  end

  def new
    @room = Room.new
      @room.tags.build
  end

  def create
    @room = Room.new(room_params)
    if @room.save
      room_tag = Tag.create(name: params[:room][:tags][:name])
      @room.tags << room_tag
      redirect_to(rooms_path)
    else
      render 'new'
    end
  end

  def destroy

  end

  private

    def room_params
      params.require(:room).permit(:name)
    end
end
