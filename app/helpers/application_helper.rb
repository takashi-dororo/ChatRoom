module ApplicationHelper

  def current_user
    @current_user ||= session[:current_user_id] &&
      User.find_by(id: session[:current_user_id])
  end

  def chat_comment_count
    Chat.all.count.to_s
  end
end
