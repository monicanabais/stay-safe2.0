Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: "users#show", as: :authenticated_root, via: :get
  end

  root to: "pages#home"

  resources :users do
    resources :friend_requests, only: [:create, :destroy]
  end
  resources :friend_requests, except: [:show, :create]
  resources :hazard_notifications, only: :index
  resources :friendships, only: [:index, :update, :destroy]
  resources :current_locations, only: [:create]
  resources :hazards, only: :index

  namespace :admin do
    resources :hazards
    resources :users
    resources :friend_requests
    resources :friendships
    resources :current_locations

  end
end
