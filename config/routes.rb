Rails.application.routes.draw do
  devise_for :users
  root 'user#index'

  namespace :admin do
    root to: 'dashboard#index'
    resources :dashboard, only: :index
    namespace :manage do
      resources :companies
    end
  end

end
