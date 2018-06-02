class Todo < ApplicationRecord
  has_many :todo_from, class_name: "TodoRelation", foreign_key: "from_todo_id"
  has_many :todo_to, class_name: "TodoRelation", foreign_key: "to_todo_id"
  has_many :following, through: :todo_from, source: :to_todo
  has_many :followed, through: :todo_to, source: :from_todo

  accepts_nested_attributes_for :todo_to

  def find_childrens
    todo_childrens = []
    self.following.ids.each do |matching_todo_id|
      todo_childrens = Todo.where(id: matching_todo_id )
    end
    return todo_childrens
  end

end
