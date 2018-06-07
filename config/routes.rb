Rails.application.routes.draw do
  devise_for :users

  root to: "users#show/:id"

  resources :users do
    resources :friend_requests, only: [:create, :destroy]
  end
  resources :friend_requests, except: [:show, :create]
  resources :hazard_notifications, only: :index
  resources :friendships, only: [:index, :update, :destroy]
  resources :current_locations, only: [:new, :create, :destroy]
  resources :hazards, only: :index
  namespace :admin do
    resources :hazards
    resources :users
    resources :friend_requests
    resources :friendships
    resources :current_locations

  end
end
