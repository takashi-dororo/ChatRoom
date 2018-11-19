Rails.application.routes.draw do
  root 'static_pages#home'

  post   '/login',       to: 'users#create'
  patch  '/update',      to: 'users#update'
  delete '/logout',      to: 'users#destroy'

  get    '/rooms/index', to: 'rooms#index'
  get    '/rooms/:id',   to: 'rooms#show'
  get    '/rooms/new',   to: 'rooms#new'
  post   '/rooms',       to: 'rooms#create'
  delete '/rooms/:id',   to: 'rooms#destroy'

  post   '/chats',       to: 'chats#create'

  resources :users
  resources :rooms

end
