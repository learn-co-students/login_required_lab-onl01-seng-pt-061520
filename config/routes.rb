Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'sessions#login'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  get '/homepage', to: 'sessions#show', as: 'homepage'
  get '/secret', to: 'secrets#show', as: 'secret'
  post '/logout', to: 'sessions#destroy'
end
