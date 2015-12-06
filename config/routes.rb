Rails.application.routes.draw do
  get 'friendships/create'

  root to: "application#welcome"
  devise_for :profiles
  resources :profiles, only: [:index, :show] do
    get :pre, on: :collection
  end
  resource :profile, only: [:edit, :update]
  resources :friendships
end
