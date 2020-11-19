class SecretsController < ApplicationController
  before_action :redirect_if_logged_out

  def show
  end

  private
  def redirect_if_logged_out
    redirect_to '/login' unless current_user
  end
end
