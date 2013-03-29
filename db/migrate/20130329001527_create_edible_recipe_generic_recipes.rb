class CreateEdibleRecipeGenericRecipes < ActiveRecord::Migration
  def change
    create_table :edible_recipe_generic_recipes do |t|
      t.string :title
      t.string :description
      t.smallint :language

      t.timestamps
    end
  end
end
