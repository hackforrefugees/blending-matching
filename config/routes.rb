Rails.application.routes.draw do
  get 'friendships/create'

  root to: "application#welcome"
  devise_for :profiles
  resources :profiles, only: [:index, :show]
  resource :profile, only: [:edit, :update]
  resources :friendships
end
