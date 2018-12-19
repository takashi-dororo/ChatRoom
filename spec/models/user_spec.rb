# == Schema Information
#
# Table name: users
#
#  id         :bigint(8)        not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe User, type: :model do

  # 有効なファクトリがあること
  it "has a valid facotry" do
    expect(FactoryBot.build(:user)).to be_valid
  end

  # name属性があれば有効　なくても良い
  it "is valid with name" do
    user = FactoryBot.build(:user)
    user.valid?
    expect(user).to be_valid
  end

  # name属性がなければ無効
  it "is invalid without name" do
    user = FactoryBot.build(:user, name: nil)
    user.valid?
    expect(user.errors[:name]).to include("can't be blank")
  end

  # nameの文字数の上限が１０であること　なくても良い
  it "is valid with the name length within 10" do
    user = User.new(name: "a" * 10)
    expect(user).to be_valid
  end

  # nameの文字数が１１以上だと無効になること
  it "is invalid with the name length over 10" do
    user = User.new(name: "a" * 11)
    expect(user).to_not be_valid
  end
end
