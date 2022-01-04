class Recipe < ApplicationRecord
    belongs_to :user, class_name: "User", foreign_key: "user_id"
    has_many :recipe_foods, dependent: :destroy

    validates :name, presence: true
    validates :text, presence: true
    validates :public, presence: true
    validates :preparation_time, :cooking_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
end
