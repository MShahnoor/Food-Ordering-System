class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group
  has_many :deal_deal_items
end
