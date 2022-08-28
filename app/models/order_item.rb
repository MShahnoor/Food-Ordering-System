class OrderItem < ApplicationRecord
  belongs_to :order_itemable, polymorphic: true # refers to i) food_item ii) deal
  belongs_to :order
  has_and_belongs_to_many :options
  has_many :addon_order_items
  has_many :addons, through: :addon_order_items
  has_many :order_item_food_items
  has_many :food_items, through: :order_item_food_items
end
