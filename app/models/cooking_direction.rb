class CookingDirection < ApplicationRecord
  belongs_to :family_recipe

  scope :sort, -> { order(:step => "ASC") }

  # Validate methods
  validates_presence_of :step
  validates_presence_of :direction
end
