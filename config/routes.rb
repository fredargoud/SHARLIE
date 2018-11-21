Rails.application.routes.draw do
  namespace :profile do
    resources :spaces, only: [:index]
  end

  resources :spaces do
    resources :bookings, only: [:create]
  end
  devise_for :users

  root to: 'spaces#index'
end
