class GeneralShoppingListsController < ApplicationController
  def index
    @recipes = current_user.recipes.includes(:recipe_foods).where(public: true).order('updated_at')
  end
end
