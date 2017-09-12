class Chapter < ApplicationRecord
  belongs_to :book
  has_paper_trail
end
