# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :user do
    sequence(:name) { |n| "ゲスト#{n}" }
  end
end
