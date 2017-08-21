class Wiki < ApplicationRecord
  belongs_to :user
  has_paper_trail
  CATEGORIES = ["Literature", "Science", "Math", "Biography", "History", "Poetry", "Nature", "Bible", "Health", "Home Ec", "Other"]

  def self.search(search)
    where("name ILIKE ? OR author ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
