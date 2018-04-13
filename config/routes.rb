Rails.application.routes.draw do
  root "application#new"

  resources :admin, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
