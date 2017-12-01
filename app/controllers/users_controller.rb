class UsersController < ApplicationController
  def update
    user = User.find(1)

    user.location = params[:location] if params[:location].present?
    user.temperature = params[:temperature] if params[:temperature].present?

    user.save!

    redirect_to root_path
  end
end
