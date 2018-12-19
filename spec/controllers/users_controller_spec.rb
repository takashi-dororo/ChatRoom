require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe "#create" do
    let(:user) { FactoryBot.create(:user) }
    context "when clcik check in button" do
      it "display user name's number eq User id" do
        expect { post :create}.to change { User.count }.by(1)
      # ユーザーが保存されたらリダイレクトする
        expect(response).to redirect_to(rooms_path)
        user_id = User.last.id
      # ログインしてセッションが有効な状態になっている(多分間違い)
        expect(user_id).to eq session[:current_user_id]
      end
    end
  end

  describe "#update" do
    # 認可されたユーザーとして
    context "as an authorized user" do
      let(:user) { FactoryBot.create(:user) }
      let(:user_params) { FactoryBot.attributes_for(:user, name: "Test User") }
      before do
        log_in user
        patch :update, params: { id: user.id, user: user_params }
      end
      it "updates user" do
        expect(user.reload.name).to eq "Test User"
      end
    end

    # context "as a unauthorized user" do
    #   before do
    #     @user = FactoryBot.create(:user)
    #     @other = FactoryBot.create(:user)
    #   end
    #   it "updates user" do
    #     user_params = FactoryBot.attributes_for(:user,
    #       name: "Test User")
    #     log_in @user
    #     patch :update, params: { id: @other.id, user: user_params }
    #     expect(@other.reload.name).to_not eq "Test User"
    #   end
    # end
  end
end
