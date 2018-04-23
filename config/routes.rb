Rails.application.routes.draw do
  devise_for :users
  root 'user#index'

  namespace :admin do
    root to: 'dashboard#show'
    resource :dashboard, only: :show, controller: 'dashboard'
    namespace :manage do
      resources :companies
    end
  end

end
