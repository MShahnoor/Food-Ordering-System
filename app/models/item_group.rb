class ItemGroup < ApplicationRecord
  has_many :menu_items, as: :menu_itemable
  has_many :options
  has_many :food_items
  belongs_to :restaurant
end
