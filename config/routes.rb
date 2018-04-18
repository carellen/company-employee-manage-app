Rails.application.routes.draw do
  devise_for :users
  root "user#index"

  resources :admin, only: [:index]

  namespace :admin do
    resources :dashboard, only: :index
  end
end
