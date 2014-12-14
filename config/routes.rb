Rails.application.routes.draw do

  namespace :api, module: "api" do
    resources :availabilities
    resources :shifts
    resources :groups
    resources :positions
    resources :roles
    resources :users
  end
  
  devise_for :users
  root 'groups#index'

  resources :groups, only: [:show, :index]

end
