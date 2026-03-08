Rails.application.routes.draw do
  get "rooms/index"
  get "users/new"
  get "users/create"
  get "users/show"
  get "users/edit"
  get "users/update"
  root "rooms#index"

  resources :users, only: [:new, :create, :show, :edit, :update]

  get    "login",  to: "sessions#new"
  post   "login",  to: "sessions#create"
  delete "logout", to: "sessions#destroy"
  resources :rooms
  resources :reservations
end 