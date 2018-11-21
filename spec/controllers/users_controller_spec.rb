require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      post :create
      expect(response).to redirect_to(rooms_path)
    end
  end

  describe "GET #update" do
    it "returns http success" do
      patch :update
      expect(response).to be_successful
    end
  end

  describe "GET #destroy" do
    it "returns http success" do
      delete :destroy
      expect(response).to be_successful
    end
  end

  # decribe 'login user' do
  #   context 'when click login butoon click' do
  #     it 'login guest user' do
  #       expect{ user.create }.to
  #     end
  #   end
  # end
end
