class AddGenericRecipeIdToRecipe < ActiveRecord::Migration
  def change
    add_column :edible_recipe_recipes, :generic_recipe_id, :integer
  end
end
