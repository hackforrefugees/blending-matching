Rails.application.routes.draw do
  root to: "application#welcome"
  devise_for :profiles, controllers: { registrations: "registrations" }
  resources :profiles, only: [:index, :show]
  resource :profile, only: [:edit, :update]
  resources :friendships
end
