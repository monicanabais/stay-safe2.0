Rails.application.routes.draw do
  devise_for :users

  root to: "users#index"
  resources :users do
    resources :hazard_notifications, only: :index
    resources :friend_requests, except: :show
    resources :friendships, only: [:index, :update, :destroy]

  end
  resources :current_locations, only: [:create]
  resources :hazards, only: :index
  namespace :admin do
    resources :hazards, only: [:new, :create, :update]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
