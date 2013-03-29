module EdibleRecipe
  class GenericRecipe < ActiveRecord::Base
    attr_accessible :recipe, :recipe_attributes, :description, :language, :title
    
    has_many :recipes
    accepts_nested_attributes_for :recipes  #, :reject_if => lambda { |r| r[:title].blank? }

  end
end
