Rails.application.routes.draw do
  devise_for :users

  devise_scope :user do
    authenticated :user do
      root to: 'users#show', as: :authenticated_root, via: :get
    end
    unauthenticated do
      root to: 'pages#home', as: :unauthenticated_root
    end
  end

  resources :users do
    resources :friend_requests, only: [:create, :destroy]
  end

  resources :friend_requests, except: [:show, :create] do
    patch :read
  end
  resources :hazard_notifications, only: [:index, :create]
  resources :friendships, only: [:index, :update, :destroy]
  resources :current_locations, only: [:create]
  resources :hazards, only: :index

  post :mark_as_safe, to: 'hazard_notifications#mark_as_safe'


  namespace :admin do
    resources :hazards
    resources :users
    resources :friend_requests
    resources :friendships
    resources :current_locations
    resources :hazard_notifications
  end
end
