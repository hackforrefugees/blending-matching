Rails.application.routes.draw do
  root to: "application#welcome"
  devise_for :profiles
  resources :profiles, only: [:index, :show]
  resource :profile, only: [:edit, :update]
end
