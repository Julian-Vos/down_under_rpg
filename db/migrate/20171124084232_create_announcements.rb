class CreateAnnouncements < ActiveRecord::Migration[5.1]
  def change
    create_table :announcements do |t|
      t.column :category, :text
      t.column :subject_id, :integer

      t.timestamps
    end
  end
end
