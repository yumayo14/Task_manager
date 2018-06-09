class CreateMemos < ActiveRecord::Migration[5.1]
  def change
    create_table :memos do |t|
      t.string :text, null: false
      t.references :todo
      t.timestamps
    end
  end
end
