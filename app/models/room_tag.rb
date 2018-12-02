# == Schema Information
#
# Table name: room_tags
#
#  id         :bigint(8)        not null, primary key
#  room_id    :bigint(8)
#  tag_id     :bigint(8)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class RoomTag < ApplicationRecord
  belongs_to :room
  belongs_to :tag
end
