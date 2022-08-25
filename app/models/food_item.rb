class FoodItem < ApplicationRecord
  belongs_to :discount
  belongs_to :item_group
  belongs_to :restaurant
end
