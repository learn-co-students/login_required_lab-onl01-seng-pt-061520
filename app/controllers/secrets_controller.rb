class SecretsController < ApplicationController
  before_action :current_user

  def show
    if current_user.present?
      @user = current_user
    else
      redirect_to login_path
    end
  end

end
