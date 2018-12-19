# == Schema Information
#
# Table name: rooms
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Room, type: :model do
  let(:name) { 'Test' }
  let(:room) { Room.new(name: name) }
  # name属性があれば有効な状態
  it "is valid with name" do
    expect(room).to be_valid
  end

  # name属性がなければ無効な状態
  context "name empty" do
    let(:name) { '' }
    it "is invalid without name" do
      expect(room).to be_invalid
    end
  end

  # 同じ名前の部屋を作ることができない
  context "duplicate name rooms fail" do
    it "does not allow duplicate room names" do
      new_room = Room.new(
        name: "Test room",
      )
      new_room.valid?
      expect(new_room.errors[:name]).to include("has already been taken")
    end

  # 検索文字列(タグ)に一致するルームを返す
  # it "returns rooms that match the search" do
  #   room = FactoryBot.create(:room)
  #   tag1 = room.tags.create(
  #     name: "Searchtag1",
  #   )
  #   tag2 = room.tags.create(
  #     name: "Searchtag2",
  #   )
  #   tag3 = room.tags.create(
  #     name: "tag1 tag2",
  #   )
  #   binding.pry
  #   expect(Room.search("Search")).to include(tag1, tag2)
  # end
end
