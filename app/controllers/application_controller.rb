class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :check_if_logged_in

  private

  def check_if_logged_in
    @current_user = User.find_by(id: session[:current_user_id])
  end
end
