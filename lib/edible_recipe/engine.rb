module EdibleRecipe
  class Engine < ::Rails::Engine
    isolate_namespace EdibleRecipe

    config.generators do |g|
	  g.test_framework :rspec
	end

  end
end
