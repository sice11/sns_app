class AddWordsColumnToFreewords < ActiveRecord::Migration[5.1]
  def change
    add_column :freewords, :word2, :string, after: :word
    add_column :freewords, :word3, :string, after: :word2
    add_column :freewords, :word4, :string, after: :word3
    add_column :freewords, :word5, :string, after: :word4
  end
end
