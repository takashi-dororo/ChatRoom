FactoryBot.define do
  factory :chat do
    user_id { 1 }
    room_id { 1 }
    content { "MyText" }
  end
end
