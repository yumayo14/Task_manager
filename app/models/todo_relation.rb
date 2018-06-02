class TodoRelation < ApplicationRecord
  belongs_to :from_todo, class_name: "Todo", foreign_key: :from_todo_id, optional: true
  belongs_to :to_todo, class_name: "Todo",   foreign_key: :to_todo_id, optional: true
end
