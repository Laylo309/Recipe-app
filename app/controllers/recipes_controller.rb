class RecipesController < ApplicationController
  load_and_authorize_resource

  def index
    @recipes = current_user.recipes.all
  end

  def show
    @recipe = Recipe.find_by_id(params[:id])
    @recipe_foods = RecipeFood.includes(:recipe).where(recipe_id: @recipe.id)
  end

  def create
    @recipe = current_user.recipes.new(recipe_params)
    respond_to do |format|
      format.html do
        if @recipe.save
          flash[:notice] = 'Recipe was successfully created.'
        else
          flash[:alert] = "Failed to add recipe - #{@recipe.errors.full_messages.first}"
        end
        redirect_to recipes_path
      end
    end
  end

  # DELETE /recipes/1
  def destroy
    recipe = Recipe.find(params[:id])
    if recipe.destroy
      flash[:notice] = 'Recipe deleted!'
    else
      flash[:alert] = "Failed to remove recipe - #{recipe.errors.full_messages.first}"
    end
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :preparation_time, :cooking_time, :description, :public)
  end
end
