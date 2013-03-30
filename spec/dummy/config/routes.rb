Rails.application.routes.draw do

  mount EdibleRecipe::Engine => "/recipe"
end
