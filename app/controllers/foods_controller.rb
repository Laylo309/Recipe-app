class FoodsController < ApplicationController
  load_and_authorize_resource
  before_action :set_food, only: %i[ show destroy ]

  def index
    @foods = Food.all
  end

  def show
    @food = Food.find(params[:id])
  end

  def new
    @food = Food.new
    @current_user = current_user
  end

  def create
    @food = Food.new()

      if @food.save
        redirect_to foods_url, notice: "Food was successfully created." 
      else
       render :new
      end
  end

  def destroy
    @food.destroy

    redirect_to foods_url, notice: "Food was successfully destroyed." 
  end

  private

    def set_food
      @food = Food.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def food_params
      params.require(:food).permit(:name, :measurement_unit, :price)
    end
end
