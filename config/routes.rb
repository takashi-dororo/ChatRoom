Rails.application.routes.draw do
  root 'static_pages#home'

  post   '/chats',       to: 'chats#create'

  resources :users, only: [:create, :update, :destroy]
  resources :rooms

end
