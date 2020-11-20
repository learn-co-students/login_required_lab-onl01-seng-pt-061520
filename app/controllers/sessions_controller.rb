class SessionsController < ApplicationController
  before_action :current_user
  skip_before_action :current_user, only: [:login, :create]

  def create
    if params[:name].present?
      session[:name] = params[:name]
      redirect_to homepage_path
    else
      redirect_to login_path
    end
  end

  def show
    @username = session[:name]
  end

  def destroy
    session.delete :name 
  end

  private

  def current_user
    redirect_to login_path unless session.include? :name
  end
end
