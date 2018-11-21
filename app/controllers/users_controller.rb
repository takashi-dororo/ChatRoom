class UsersController < ApplicationController

  def create
    # ログインボタンを押した時の処理
    redirect_to(rooms_path)
  end

  def update
  end

  def destroy
  end
end
