class RecipeFoodsController < ApplicationController

  def create
    @recipe = Recipe.find_by_id(params[:recipe_id])
    @recipe_foods = @recipe.recipe_foods.new(
      quantity: params[:quantity],
      food_id: params[:food_id]
    )
  respond_to do |format|
    format.html do
      if @recipe_foods.save
        flash[:success] = 'Your new Ingredient Successfully Created'
      else
        flash[:danger] = "Failed to create this ingredient - #{@recipe_food.errors.full_messages.first}"
      end
      redirect_to recipe_path(params[:recipe_id])
    end
    end
  end

  def destroy
    @recipe_foods = RecipeFood.find(params[:id])
    if @recipe_foods.destroy
      flash[:notice] = 'Ingredient successfuly removed!'
    else
      flash[:alert] = "Failed to remove the ingredient - #{recipe.errors.full_messages.first}"
    end
    redirect_to recipe_path(params[:recipe_id])
  end

end
