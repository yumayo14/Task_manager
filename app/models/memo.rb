class Memo < ApplicationRecord
  belongs_to :todos, optional: true
end
