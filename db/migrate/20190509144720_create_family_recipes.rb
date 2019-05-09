class CreateFamilyRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :family_recipes do |t|
      t.string :title
      t.string :category
      t.text :short_description
      t.string :country
      t.text :long_description

      t.timestamps
    end
  end
end
