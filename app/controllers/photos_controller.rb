class PhotosController < ApplicationController
  def index
    @photos = Photo.order(created_at: :desc)
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def create
    photo = Photo.new(filename: params[:filename], description: params[:description], post_id: params[:post_id])

    if photo.save && photo.post.nil?
      Announcement.create!(category: 'PhotoCreated', subject_id: photo.id)
    end

    redirect_to photos_path
  end
end
