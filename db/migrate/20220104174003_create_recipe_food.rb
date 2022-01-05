class CreateRecipeFood < ActiveRecord::Migration[6.1]
  def change
    create_table :recipe_foods do |t|
      t.decimal :quantity, precision: 10, scale: 2
      t.bigint :recipe_id
      t.bigint :food_id

      t.timestamps
    end

    add_foreign_key :recipe_foods, :recipes,  column: :recipe_id
    add_foreign_key :recipe_foods, :foods,  column: :food_id

    add_index :recipe_foods, :recipe_id
    add_index :recipe_foods, :food_id
  end
end
