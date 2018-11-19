Rails.application.routes.draw do
  root 'static_pages#home'

  post   '/login',          to: 'users#create'
  patch  '/update',         to: 'users#update'
  delete '/logout',         to: 'users#destroy'

  get    '/sessions/new',   to: 'sessions#new'
  post   '/sessions',       to: 'sessions#create'
  delete '/sessions/:id',   to: 'sessions#destroy'

  # get    '/posts/:id',      to: 'posts#show'
  # get    '/posts',          to: 'posts#index'
  # get    '/posts/new',      to: 'posts#new'
  # post   '/posts',          to: 'posts#create'
  # get    '/posts/:id/edit', to: 'posts#edit'
  # patch  '/posts/:id',      to: 'posts#update'
  # delete '/posts/:id',      to: 'posts#destroy'

  resources :users
  resources :sessions
  resources :posts
end
