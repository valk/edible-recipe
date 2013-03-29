module EdibleRecipe
  class Recipe < ActiveRecord::Base
    attr_accessible :description, :instructions, :title

    belongs_to :generic_recipe
  end
end
