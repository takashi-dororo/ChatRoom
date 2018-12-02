require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #create" do
    let(:user) { FactoryBot.create(:user) }
    context "when clcik check in button" do
      before do
        post :create, params: { id: user }
      end
      it "redirect to rooms_path" do
        expect("ゲスト#{user.id}").to eq user.name
        expect(response).to redirect_to(rooms_path)
      end
    end
  end

  # describe "GET #update" do
  #   it "returns http success" do
  #     patch :update, params: { name: "calrosgone"}
  #     expect(user.name).to eq "calrosgone"
  #   end
  # end
  #
  # describe "GET #destroy" do
  #   it "returns http success" do
  #     delete :destroy
  #     expect(response).to be_successful
  #   end
  # end

  # describe 'login user' do
  #   context 'when click login butoon click' do
  #     it 'login guest user' do
  #       expect{ user.create }.to
  #     end
  #   end
  # end
end
