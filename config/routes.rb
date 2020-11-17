Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/", to: "sessions#new"
  get "/welcome", to: "application#welcome"
  resource :secrets, only: [:show] 
  resource :sessions, only: [:new, :create, :destroy]

end
