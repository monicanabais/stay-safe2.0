Rails.application.routes.draw do
  devise_for :users

  root to: "user#index"
  resources :users do
    resources :hazard_notifications, only: :index
    resources :friend_requests, except: :show
    resources :friendships, only: [:index, :update, :destroy]
    resources :current_locations, only: [:new, :create, :destroy]
  end
  resources :hazards, only: :index
  namespace :admin do
    resources :hazards, only: [:new, :create, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
