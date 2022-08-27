class DealItem < ApplicationRecord
  has_many :deal_deal_items
  has_many :deals ,through: :deal_deal_items
end
