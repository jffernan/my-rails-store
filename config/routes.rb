Rails.application.routes.draw do

  root 'users#home' #home
  get '/about' => 'users#about'
  resources :users
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/users/:id/account', to: 'users#account', as: :account
  patch '/users/:id/account' => 'users#account_update'
  get '/users/:id/payment', to: 'users#payment', as: :payment
  patch '/users/:id/payment' => 'users#payment_update'

  resource :cart, only: [:show]
  resources :widgets
  resources :order_items
  resources :orders

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
