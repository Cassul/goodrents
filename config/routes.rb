Rails.application.routes.draw do
  resources :messages
  resources :comments
  resources :reviews
  resources :users


  root 'welcome#index'

  get '/login', to:"users#login"
  post '/sessions' ,to:"sessions#create"

  delete '/sessions', to:"sessions#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
