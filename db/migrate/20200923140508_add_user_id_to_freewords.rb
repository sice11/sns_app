class AddUserIdToFreewords < ActiveRecord::Migration[5.1]
  def change
    add_column :freewords, :user_id, :integer
  end
end
