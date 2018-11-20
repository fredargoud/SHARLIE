Rails.application.routes.draw do
  resources :spaces do
    resources :bookings, only: [:create]
  end
  devise_for :users

  root to: 'spaces#index'
end
