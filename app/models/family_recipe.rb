class FamilyRecipe < ApplicationRecord

  belongs_to :user

  scope :sorted,        -> { order(:category => "ASC") }

  # Validate methods
  validates_presence_of :title
  validates_presence_of :category
  validates_presence_of :short_description
  validates_presence_of :country

  # Methods
  def self.search(search)
    where("title ILIKE ? OR short_description ILIKE ? OR country ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end
end
