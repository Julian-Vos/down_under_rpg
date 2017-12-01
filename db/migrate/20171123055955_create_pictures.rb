class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.column :post_id, :integer
      t.column :filename, :text
      t.column :description, :text

      t.timestamps
    end
  end
end
