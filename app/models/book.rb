class Book < ApplicationRecord
  belongs_to :user
  has_many :chapters, dependent: :destroy
  accepts_nested_attributes_for :chapters, allow_destroy: true

  has_paper_trail

  CATEGORIES = ["Literature", "Science", "Math", "Biography", "History", "Poetry", "Nature", "Bible", "Health", "Home Ec", "Other"]
  AGE_RANGES = ["6 to 8 years old", "9 to 12 years old", "13 to 15 years old", "16 to 18 years old"]

  def self.search(search)
    where("title ILIKE ? OR author ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%")
  end

end
