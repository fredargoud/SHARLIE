Rails.application.routes.draw do
  resources :spaces do
    resources :bookings, only: [:create, :index, :show]
  end
  devise_for :users

  namespace :profile do
    resources :bookings, only: [:index]
  end

  root to: 'spaces#index'
end


