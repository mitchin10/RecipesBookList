class AddSlugToFamilyRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :family_recipes, :slug, :string
    add_index :family_recipes, :slug, unique: true
  end
end
