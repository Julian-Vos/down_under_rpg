class AddStatementToAnnouncements < ActiveRecord::Migration[5.1]
  def change
    add_column :announcements, :statement, :text
  end
end
