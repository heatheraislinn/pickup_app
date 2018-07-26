Rails.application.routes.draw do
  root 'home#index'
  get '/about',     to: 'static_pages#about'
  get '/directory', to: 'static_pages#directory'
  get '/games',     to: 'static_pages#games'
  get '/contact',   to: 'static_pages#contact'
  # get '/signup',  to: 'users#new'
  get '/login',     to: 'sessions#new'
  post '/login',    to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
