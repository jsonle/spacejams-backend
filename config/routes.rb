Rails.application.routes.draw do
  resources :messages
  resources :chats
  resources :rooms
  get '/login', to: "auth#spotify_request"
  get '/auth', to: "auth#show"
  get '/user', to: "users#spotify_login"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
