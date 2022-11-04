Rails.application.routes.draw do
  resources :weight_histories
  resources :exercises
  resources :progress_photos
  resources :programs
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
