class AddPublishToFamilyRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :family_recipes, :publish, :boolean, :default => false
  end
end
