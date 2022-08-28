class Deal < ApplicationRecord
  has_many :menu_items, as: :menu_itemable
  has_many :deal_deal_items
  has_many :deal_items ,through: :deal_deal_items
end
