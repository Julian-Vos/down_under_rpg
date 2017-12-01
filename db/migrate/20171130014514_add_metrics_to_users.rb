class AddMetricsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :location, :text
    add_column :users, :temperature, :text
  end
end
