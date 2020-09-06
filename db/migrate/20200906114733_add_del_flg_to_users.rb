class AddDelFlgToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :del_flg, :integer, default:0
  end
end
