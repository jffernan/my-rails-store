Rails.application.routes.draw do
  root 'users#home' #home

  resources :users
  get '/signup', to: "users#new"
  post '/signup', to: "users#create"
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
