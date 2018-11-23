Rails.application.routes.draw do
  namespace :profile do
    resources :spaces, only: [:index, :destroy, :show, :edit]
  end

  resources :spaces do
    resources :bookings, only: [:create, :index, :show]
    resources :reviews, only: :create
  end
  devise_for :users

  resources :bookings, only: [:destroy]

  namespace :profile do
    resources :bookings, only: [:index, :show]
  end

  root to: 'spaces#index'
end
