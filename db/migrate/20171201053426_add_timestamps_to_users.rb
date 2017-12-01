class AddTimestampsToUsers < ActiveRecord::Migration[5.1]
  def change
    change_table(:users, &:timestamps)
  end
end
