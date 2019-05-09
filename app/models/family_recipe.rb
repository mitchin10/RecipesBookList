class FamilyRecipe < ApplicationRecord

  belongs_to :user

  scope :search,        -> { where{["title LIKE ?", "%#{query}%"]} }
  scope :sorted,        -> { order(:category => "ASC") }

  validates_presence_of :title
  validates_presence_of :category
  validates_presence_of :short_description
  validates_presence_of :country
end
