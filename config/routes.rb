Rails.application.routes.draw do
  root 'static_pages#home'

  post   '/login',  to: 'users#create'
  patch  '/update', to: 'users#update'
  delete '/logout', to: 'users#destroy'

  resources :users
end
