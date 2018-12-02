# == Schema Information
#
# Table name: chats
#
#  id         :bigint(8)        not null, primary key
#  user_id    :integer
#  room_id    :integer
#  content    :text(65535)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :chat do
    user_id { 1 }
    room_id { 1 }
    content { "MyText" }
  end
end
