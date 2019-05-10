class Ingredient < ApplicationRecord
  belongs_to :family_recipe

  validates_presence_of :ingredient
end
