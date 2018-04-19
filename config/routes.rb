Rails.application.routes.draw do
  devise_for :users
  root 'user#index'

  namespace :admin do
    root to: 'dashboard#index'
    resources :dashboard, only: :index
  end

  namespace :companies do
    resources :manage
  end
end
