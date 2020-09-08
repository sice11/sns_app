class AddDelFlgToPosts < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :del_flg, :integer, default:0
  end
end
