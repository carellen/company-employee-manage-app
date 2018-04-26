Rails.application.routes.draw do
  devise_for :users, :controllers => { :invitations => 'invitations' }
  root 'users#index'

  namespace :users do
    namespace :manage do
      resources :employees
    end
  end

  namespace :admin do
    root to: 'dashboard#show'
    resource :dashboard, only: :show, controller: 'dashboard'
    namespace :manage do
      resources :companies
    end
  end

end
