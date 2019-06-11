class FamilyRecipe < ApplicationRecord

  belongs_to :user
  has_many :ingredients, inverse_of: :family_recipe, dependent: :destroy
  accepts_nested_attributes_for :ingredients, reject_if: :all_blank, allow_destroy: true

  has_many :cooking_directions, inverse_of: :family_recipe, dependent: :destroy
  accepts_nested_attributes_for :cooking_directions, reject_if: :all_blank, allow_destroy: true

  extend FriendlyId
  friendly_id :title, use: :slugged

  scope :sorted,        -> { order(:category => "ASC") }
  scope :published,     -> { where(:publish => true) }
  scope :unpublished,   -> { where(:publish => false) }

  # Validate methods
  validates_presence_of :title
  validates_presence_of :category
  validates_presence_of :short_description
  validates_presence_of :country

  # Methods
  def self.search(search)
    where("title ILIKE ? OR short_description ILIKE ? OR country ILIKE ? OR category ILIKE ?", "%#{search}%", "%#{search}%", "%#{search}%", "%#{search}%")
  end

  def self.search_for(search_for)
    where("title ILIKE ? OR short_description ILIKE ? OR country ILIKE ? OR category ILIKE ?", "%#{search_for}%", "%#{search_for}%", "%#{search_for}%", "%#{search_for}%")
  end
end
