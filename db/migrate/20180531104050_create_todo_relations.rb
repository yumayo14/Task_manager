class CreateTodoRelations < ActiveRecord::Migration[5.1]
  def change
    create_table :todo_relations do |t|
      t.integer :from_todo_id, null: false
      t.integer :to_todo_id
      t.timestamps
    end
  end
end
