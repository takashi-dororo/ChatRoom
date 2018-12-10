# サーバーサイドの処理を受け持つチャンネル

class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    # ActionCable.server.broadcast 'room_channel', chat: data['chat'] このままだと保存されない
    Chat.create! content: data['chat']
  end
end
