class FoodItem < ApplicationRecord
  belongs_to :discount
  belongs_to :item_group
  belongs_to :restaurant
  has_many :food_item_options
  has_many :options, through: :food_item_options
end
