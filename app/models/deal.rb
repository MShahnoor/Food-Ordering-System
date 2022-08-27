class Deal < ApplicationRecord
  has_many :deal_deal_items
  has_many :deal_items ,through: :deal_deal_items
end
