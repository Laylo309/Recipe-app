require 'rails_helper'

RSpec.describe Recipe, type: :model do
  before :each do
    user = User.new(id: 1, name: 'hamza')
    user.email = 'foo1@foo.com'
    user.password = 'admin123'
    user.password_confirmation = 'admin123'
    user.save
  end

  before :each do
    @recipe = Recipe.create(
        name: 'Anything',
        preparation_time: 30,
        cooking_time: 50,
        description: 'Delicious recipe',
        public: true,
        user_id: 1
      )
    @food = Food.create(
        name: "apple",
        measurement_unit: "Kg",
        price: 10,
        user_id: 1
    )
  end

  subject do
    RecipeFood.new(
      quantity: 90,
      food_id: @food.id,
      recipe_id: @recipe.id
    )
  end

  before { subject.save }

  it 'is valid with valid attributes' do
    expect(subject).to be_valid
  end

  it 'is not valid with invalid quantity' do
    subject.quantity = 0
    expect(subject).to_not be_valid
  end

  
  it 'is not valid with negative quantity' do
    subject.quantity = -1
    expect(subject).to_not be_valid
  end
end
