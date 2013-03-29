module EdibleRecipe
  class GenericRecipe < ActiveRecord::Base
    attr_accessible :description, :language, :title
  end
end
