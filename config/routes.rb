Rails.application.routes.draw do
  # get 'home/index'

  # get 'users/new'

  root 'home#index'
  get '/about',   to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'
  #get 'signup',   to: 'users#new'
  resources :users
end
