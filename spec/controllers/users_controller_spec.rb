require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "GET #create" do
    it "returns http success" do
      post :create
      expect(response).to be_successful
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

end
