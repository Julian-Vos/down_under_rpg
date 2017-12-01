class CreateQuests < ActiveRecord::Migration[5.1]
  def change
    create_table :quests do |t|
      t.column :category, :text
      t.column :description, :text
      t.column :experience, :integer
      t.column :completed, :boolean, default: false

      t.timestamps
    end
  end
end
