Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/secrets', to: 'secrets#show'
  resources :sessions, only: [:new, :create]
  get '/session', to: 'sessions#destroy'
end
