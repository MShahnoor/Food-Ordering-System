class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group
  has_many :deal_deal_items
  has_many :food_item_options
  has_many :food_items, through: :food_item_options
  has_and_belongs_to_many :order_items
end
