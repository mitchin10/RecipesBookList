class CreateCookingDirections < ActiveRecord::Migration[5.0]
  def change
    create_table :cooking_directions do |t|
      t.integer :step
      t.string  :direction
      t.belongs_to :family_recipe, foreign_key: true

      t.timestamps
    end
  end
end
