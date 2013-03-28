class CreateEdibleRecipeRecipes < ActiveRecord::Migration
  def change
    create_table :edible_recipe_recipes do |t|
      t.string :title
      t.string :description
      t.text :instructions

      t.timestamps
    end
  end
end
