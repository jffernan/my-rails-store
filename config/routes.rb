Rails.application.routes.draw do
  resources :widgets
  root 'users#home' #home
  get '/about' => 'users#about'
  resources :users
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  get '/account' => 'users#account'
  get '/payment' => 'users#payment'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
