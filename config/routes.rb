Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #tasksのルーティング
  resources :tasks
  # messagesのルーティング
  resources :messages
  # messagesのルーティング
  resources :users
end
