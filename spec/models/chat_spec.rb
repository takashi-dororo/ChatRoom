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

require 'rails_helper'

RSpec.describe Chat, type: :model do
end
