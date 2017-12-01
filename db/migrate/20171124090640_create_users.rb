class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.column :username, :string
      t.column :password_digest, :string
      t.column :level, :integer, default: 1
      t.column :experience, :integer, default: 0
    end
  end
end
