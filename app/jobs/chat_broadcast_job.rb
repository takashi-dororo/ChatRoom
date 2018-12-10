class ChatBroadcastJob < ApplicationJob
  queue_as :default

  def perform(chat)
    ActionCable.server.broadcast 'room_channel', chat: render_chat(chat)
  end

  private

    def render_chat(chat)
      ApplicationController.renderer.render(partial: 'chats/chat', locals: { chat: chat })
    end
end


# Application.renderer.renderメソッドを使うと、コントローラー以外の場所でビューをレンダリングできる
# レンダリング・・受け取った情報を整形して表示  <table>を図に表示してくれる的な
