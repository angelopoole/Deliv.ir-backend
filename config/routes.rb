Rails.application.routes.draw do
  resources :userposts
  resources :posts
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, only: [:create]
  post '/login', to: 'users#login'
  get '/users', to: 'users#create'
  get "/persist", to: "users#persist"
  
  post '/createTweet', to: 'posts#create'
  get '/allPosts', to: 'posts#allPosts'
end
