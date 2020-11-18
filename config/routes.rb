Rails.application.routes.draw do
  get '/login' => 'sessions#new'
  get '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'
  get '/secret' => 'secrets#show'
end
