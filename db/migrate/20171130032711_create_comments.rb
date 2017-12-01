class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.column :post_id, :integer
      t.column :commenter, :text
      t.column :content, :text

      t.timestamps
    end
  end
end
