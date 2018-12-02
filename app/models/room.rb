# == Schema Information
#
# Table name: rooms
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Room < ApplicationRecord
  has_many :room_tags
  has_many :tags, through: :room_tags
  # validates 
end
