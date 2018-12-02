class UsersController < ApplicationController

  def create
    # ログインボタンを押した時の処理
    # @user = User.create(name: 'ゲスト')
    # @user.name = "ゲスト#{@user.id}"
    # @user.save
    user_num = User.last.present? ? User.last.id + 1 : 1
    @user = User.create(name: "ゲスト#{user_num}")
    # ログイン状態をどう記述？
    if session[:current_user_id] = @user.id
      redirect_to(rooms_path)
    end
  end

  def update
    user = User.find(params[:id])
    user.update_attributes(name: params[:user][:name])
    redirect_to(rooms_path)
  end

  def destroy
    @current_user = session[:current_user_id] = nil
  end
end
