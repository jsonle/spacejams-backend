Rails.application.routes.draw do
  resources :messages
  resources :chats
  resources :rooms
  resources :users, only: [:index, :update] 
  get '/auth', to: "auth#create"
  post '/login', to: "users#create"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
