class RenamePicturesToPhotos < ActiveRecord::Migration[5.1]
  def change
    rename_table :pictures, :photos
  end
end
