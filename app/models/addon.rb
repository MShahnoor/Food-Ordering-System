class Addon < ApplicationRecord
  belongs_to :restaurant
  has_and_belongs_to_many :menu_items
  has_many :addon_order_items
  has_many :order_items, through: :addon_order_items
end
