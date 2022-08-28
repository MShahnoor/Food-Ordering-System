class OrderItemFoodItem < ApplicationRecord
  belongs_to :order_item
  belongs_to :food_item
end
