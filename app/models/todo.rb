class Todo < ApplicationRecord
  has_many :memos, dependent: :destroy

  validates :text, presence: true

end
