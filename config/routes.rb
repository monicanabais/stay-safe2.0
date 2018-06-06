Rails.application.routes.draw do
  devise_for :users
  resources :users do
    resources :friend_requests, only: [:create]
  end

  resources :friend_requests, except: [:show, :create]
  root to: "users#index" 
  resources :hazard_notifications, only: :index
  resources :friendships, only: [:index, :update, :destroy]
  resources :current_locations, only: [:new, :create, :destroy]
  resources :hazards, only: :index
  namespace :admin do
    resources :hazards, only: [:new, :create, :update]
  end
end
