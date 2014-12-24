Rails.application.routes.draw do

  scope format: false do
    namespace :api do
      namespace :v1 do
        resources :availabilities
        resources :shifts
        resources :groups
        resources :positions
        resources :roles
        resources :users
      end
    end
  end

  devise_for :users

  get '/profile/:id', to: 'profile#show', as: :user

  resources :groups, only: [:show, :index]

  root 'groups#index'
end
