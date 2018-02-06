class AnnouncementsController < ApplicationController
  def index
    @user = User.find(1)

    @page = params[:page].to_i
    @total = Announcement.count

    @announcements = paginate(Announcement.order(created_at: :desc), @page)
  end

  def create
    if params[:statement].present?
      Announcement.create!(category: 'Extra', statement: params[:statement])
    end

    redirect_to root_path
  end
end
