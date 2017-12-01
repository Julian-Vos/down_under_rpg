class Photo < ApplicationRecord
  belongs_to :post, optional: true

  validates :filename, presence: true, uniqueness: true
  validate :file_exists

  def file_exists
    return if File.file?("app/assets/images/photos/#{filename}.jpg")

    errors.add(:filename, 'has no corresponding JPEG image')
  end

  def previous
    Photo.where('created_at < ?', created_at).order(created_at: :desc).first
  end

  def next
    Photo.where('created_at > ?', created_at).order(created_at: :asc).first
  end
end
