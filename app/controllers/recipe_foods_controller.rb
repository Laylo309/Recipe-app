class RecipeFoodsController < ApplicationController
  load_and_authorize_resource

  def new
    @recipe_food = RecipeFood.new
  end

  def create
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @food = Food.find_by_id(params[:food_id])
    @recipe_food = RecipeFood.new(recipe_food_params.merge(recipe_id: @recipe.id, food_id: @food.id))

    if @recipe_food.save
      flash[:success] = 'Your new Ingredient Successfully Created'
    else
      flash[:danger] = "Failed to create this ingredient - #{@recipe_food.errors.full_messages.first}"
    end
    redirect_back(fallback_location: root_path)
  end

  def destroy
    @recipe_food.destroy

    respond_to do |format|
      format.html { redirect_to recipe_foods_url, notice: 'Recipe food was successfully destroyed.' }
    end
  end

  private

  def set_recipe_food
    @recipe_food = RecipeFood.find(params[:id])
  end

  def recipe_food_params
    params.require(:recipe_food).permit(:quantity)
  end
end
