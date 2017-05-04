class Wiki < ApplicationRecord
  belongs_to :user
  CATEGORIES = ["Literature", "Science", "Math", "Biography", "History"]
end
