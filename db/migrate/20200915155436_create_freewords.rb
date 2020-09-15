class CreateFreewords < ActiveRecord::Migration[5.1]
  def change
    create_table :freewords do |t|
      t.string :word

      t.timestamps
    end
  end
end
