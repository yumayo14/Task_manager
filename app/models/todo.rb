class Todo < ApplicationRecord
  has_many :todo_from, class_name: "TodoRelation", foreign_key: "from_todo_id"
  has_many :todo_to, class_name: "TodoRelation", foreign_key: "to_todo_id"
  has_many :followed, through: :todo_to, source: :from_todo
  has_many :following, through: :todo_from, source: :to_todo

  accepts_nested_attributes_for :todo_to

  validates :text, presence: true

end
