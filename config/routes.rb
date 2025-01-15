Rails.application.routes.draw do
  get 'users/index'
  get 'users/edit'
  get 'dances/index'
  get 'dances/show'
  get 'events/index'
  get 'events/new'
  get 'events/create'
  get 'events/show'
  get 'events/edit'
  get 'events/update'
  get 'events/destroy'
  get 'profiles/index'
  get 'profiles/show'
  get 'profiles/edit'
  get 'profiles/update'

  devise_for :users
  root to: 'welcome#index'


  get 'welcome/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  resources :users, only: [:edit, :update]
  resource :profile, only: [:index, :show, :edit, :update]
  resources :dances, only: [:index, :show]
  resources :events

  # Defines the root path route ("/")
  # root "posts#index"
end


