Rails.application.routes.draw do
  root "application#new"
  get "/welcome", to: "welcome#new"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
