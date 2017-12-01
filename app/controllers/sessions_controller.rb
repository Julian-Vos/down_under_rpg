class SessionsController < ApplicationController
  def new; end

  def create
    user = User.where('lower(username) = ?', params[:username].downcase).first

    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id

      redirect_to root_path
    else
      redirect_to new_session_path
    end
  end

  def destroy
    session[:current_user_id] = nil

    redirect_to new_session_path
  end
end
