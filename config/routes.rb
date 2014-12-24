Rails.application.routes.draw do

  scope format: false do
    namespace :api do
      namespace :v1 do
        resources :availabilities, except: [:new, :edit]
        resources :shifts, except: [:new, :edit]
        resources :groups, except: [:new, :edit]
        resources :positions, except: [:new, :edit]
        resources :roles, except: [:new, :edit]
        resources :users, except: [:new, :edit] do
          post '/timecard', to: 'timecard_punch#create'
          delete '/timecard', to: 'timecard_punch#destroy'
        end
      end
    end
  end

  devise_for :users

  get '/profile/:id', to: 'profile#show', as: :user

  resources :groups, only: [:show, :index]

  post 'user/:id/timecard', to: 'timecard_punch#create', as: :user_timecard_punch
  delete 'user/:id/timecard', to: 'timecard_punch#destroy'

  root 'dashboard#show'
end
