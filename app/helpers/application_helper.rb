module ApplicationHelper
  def current_user
    redirect_to login_path unless session.include? :name
  end
end
