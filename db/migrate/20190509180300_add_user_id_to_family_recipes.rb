class AddUserIdToFamilyRecipes < ActiveRecord::Migration[5.0]
  def change
    add_column :family_recipes, :user_id, :integer
    add_index :family_recipes, :user_id
  end
end
