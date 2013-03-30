require 'spec_helper'

describe "GenericRecipesController" do

  describe "GET 'index'" do

    it "displays list of generic recipes" do
        generic_recipe = FactoryGirl.create(:generic_recipe)
        visit '/recipe'
        response.should be_success
        # response.should have_content("Listing Generic Recipes")
    end

  end

end
