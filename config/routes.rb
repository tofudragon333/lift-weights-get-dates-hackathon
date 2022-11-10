Rails.application.routes.draw do
  resources :weight_histories
  resources :exercises
  resources :progress_photos
  resources :programs

  resources :users, only: [ :create, :show, :update ]

  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
  get "/me", to: "users#show"
  
end
