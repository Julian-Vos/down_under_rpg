class AnnouncementsController < ApplicationController
  def index
    @user = User.find(1)

    @announcements = Announcement.order(created_at: :desc)
  end

  def create
    if params[:statement].present?
      Announcement.create!(category: 'Extra', statement: params[:statement])
    end

    redirect_to root_path
  end
end
