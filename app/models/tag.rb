# == Schema Information
#
# Table name: tags
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Tag < ApplicationRecord
  has_many :room_tags, foreign_key: 'tag_id'
  has_many :rooms, through: :room_tags
  validates :name, presence: true, length: { in: 1..10 }
end
