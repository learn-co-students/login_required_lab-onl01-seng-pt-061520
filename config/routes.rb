Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'secrets/new' #gets new secrets

  root 'application#hello' #routes to welcome page
  get '/login' => 'sessions#new' #gets new session for user login
  post '/login' => 'sessions#create' #creates new session for user
  post '/logout' => 'sessions#destroy' #deletes session for user

  get '/secrets' => 'secrets#show' #shows created secret

end
