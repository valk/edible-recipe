Factory.define do
	FactoryGirl.define do
	  ::Kernel.raise 'factories are getting loaded'
	  	factory :generic_recipe, class: EdibleRecipe::GenericRecipe do
			title "Some title"
			description "Some description"
		end
	end
end
