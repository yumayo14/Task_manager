class AddColumnToMemo < ActiveRecord::Migration[5.1]
  def change
    add_column :memos, :done, :boolean, default: false, null: false
  end
end
