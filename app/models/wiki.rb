class Wiki < ApplicationRecord
  belongs_to :user
  has_paper_trail
  CATEGORIES = ["Literature", "Science", "Math", "Biography", "History"]
end
