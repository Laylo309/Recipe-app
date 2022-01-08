class PublicRecipesController < ApplicationController
  def index
    @recipes = current_user.recipes.includes(:recipe_foods).where(public: true)
    @recipe_foods = RecipeFood.joins(:food, :recipe).where(food: { user: current_user }, recipe: { user: current_user })
    @total_cost = @recipe_foods.sum('quantity*price')
    @total_items = @recipe_foods.select('food_id').distinct.count
  end> Public recipe list:
end
