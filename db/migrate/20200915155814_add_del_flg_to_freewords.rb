class AddDelFlgToFreewords < ActiveRecord::Migration[5.1]
  def change
    add_column :freewords, del_flg, :integer, default:0
  end
end
