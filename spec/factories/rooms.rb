# == Schema Information
#
# Table name: rooms
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryBot.define do
  factory :room do
    name { "MyString" }
  end
end
