class Food < ApplicationRecord
  has_many :recipe_foods, foreign_key: :food_id
  belongs_to :user
  validates :name, :measurement_unit, :price, presence: true

end
