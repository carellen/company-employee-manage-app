Rails.application.routes.draw do
  root "user#index"

  resources :admin, only: [:index]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
