class SecretsController < ApplicationController
  def show
    redirect_to '/sessions/new' unless session[:name]
  end
end
