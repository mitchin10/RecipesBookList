class FamilyRecipe < ApplicationRecord

  scope :search, -> { where{["title LIKE ?", "%#{query}%"]} }

  validates_presence_of :title
  validates_presence_of :category
  validates_presence_of :short_description
  validates_presence_of :country
end
