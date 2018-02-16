Rails.application.routes.draw do
  resources :likes
  resources :messages
  resources :comments
  resources :reviews
  resources :users


  root 'welcome#index'
  get '/login', to: 'users#login'
  post '/sessions', to: 'sessions#create'
  delete '/sessions', to: 'sessions#destroy'

  post '/reviews/new/', to: 'reviews#existing'
  get '/reviews/new/:id', to: 'reviews#new_id'

  delete '/likes', to: 'likes#destroy'

  get '/api/reviews', to: 'reviews#api_show'
  get '/api/reviews/suburb', to: 'reviews#api_show_suburb'

  get '/api/users', to: 'users#api_show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
