Rails.application.routes.draw do
  resources :spaces do
    resources :bookings, only: [:create, :index, :show]
  end
  devise_for :users

  resources :bookings, only: [:destroy]

  namespace :profile do
    resources :bookings, only: [:index, :show]
  end

  root to: 'spaces#index'
end
