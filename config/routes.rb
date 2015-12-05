Rails.application.routes.draw do
  devise_for :profiles

  root to: "application#welcome"
end
