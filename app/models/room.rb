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
  has_many :room_tags, foreign_key: 'room_id'
  has_many :tags, through: :room_tags
  accepts_nested_attributes_for :room_tags
  validates :name, presence: true, uniqueness: true, length: { maximum: 20 }

  def self.search(search)
    if search
      Room.joins(:tags).where(['tags.name LIKE ?', "%#{search}%"])
    else
      Room.all
    end
  end
end
