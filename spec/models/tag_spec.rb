# == Schema Information
#
# Table name: tags
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Tag, type: :model do

  # name属性があれば有効な状態
  it "is valid with name" do
    room = FactoryBot.create(:room)
    tag = room.tags.create(
      name: "Test tag",
    )
    tag.valid?
    expect(tag).to be_valid
  end

  # name属性がなければ無効な状態
  it "is invalid without name" do
    room = FactoryBot.create(:room)
    tag = room.tags.create(
      name: nil,
    )
    tag.valid?
    expect(tag.errors[:name]).to include("can't be blank")
  end

  # nameの文字数が１以上１０以下ならば有効
  it "is valid with tag name length within 10" do
    room = FactoryBot.create(:room)
    tag = room.tags.create(
      name: "a" * 10,
    )
    tag.valid?
    expect(tag).to be_valid
  end

  # nameの文字数が11以上だと無効
  it "is invalid with tag name length over 11" do
    room = FactoryBot.create(:room)
    tag = room.tags.create(
      name: "a" * 11,
    )
    expect(tag).to_not be_valid
  end

end
