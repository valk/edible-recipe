EdibleRecipe::Engine.routes.draw do
  root :to => 'generic_recipes#index'

  resources :generic_recipes
  resources :recipes
end
