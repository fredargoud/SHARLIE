Rails.application.routes.draw do
  # get 'spaces/index'
  # get 'spaces/show'
  # get 'spaces/new'
  # get 'spaces/create'
  # get 'spaces/edit'
  # get 'spaces/update'
  # get 'spaces/detroy'
  resources :spaces
  devise_for :users
  root to: 'spaces#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
