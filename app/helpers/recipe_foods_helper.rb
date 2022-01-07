module RecipeFoodsHelper
  def total(ingredients)
    sum = 0.00
    ingredients.each do |ing|
      sum += ing.quantity * ing.food.price
    end
    sum
  end
end
