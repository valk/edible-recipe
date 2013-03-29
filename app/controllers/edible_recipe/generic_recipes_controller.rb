require_dependency "edible_recipe/application_controller"

module EdibleRecipe
  class GenericRecipesController < ApplicationController
    def index
    	@generic_recipes = GenericRecipe.all
  
		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @generic_recipes }
		end
    end

    def new
		@gr = GenericRecipe.new
		@gr.recipes.build

		respond_to do |format|
			format.html # new.html.erb
			format.json { render json: @gr }
		end
    end

    def create
    	@gr = GenericRecipe.new(params[:generic_recipe])
  
		respond_to do |format|
			if @gr.save
			  format.html { redirect_to @gr, notice: 'Recipe was successfully created.' }
			  format.json { render json: @gr, status: :created, location: @gr }
			else
			  format.html { render action: "new" }
			  format.json { render json: @gr.errors, status: :unprocessable_entity }
			end
		end
    end

    # PUT /recipes/1
    # PUT /recipes/1.json
    def update
      @gr = GenericRecipe.find(params[:id])
  
      respond_to do |format|
        if @recipe.update_attributes(params[:generic_recipe])
          format.html { redirect_to @gr, notice: 'Generic Recipe was successfully updated.' }
          format.json { head :no_content }
        else
          format.html { render action: "edit" }
          format.json { render json: @gr.errors, status: :unprocessable_entity }
        end
      end
    end

    def show
    	@gr = GenericRecipe.find(params[:id])
  
		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @gr }
		end
    end

    def edit
    	@gr = GenericRecipe.find(params[:id])
    end

    def destroy
    end

  end
end
