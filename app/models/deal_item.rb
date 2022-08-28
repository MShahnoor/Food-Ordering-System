class DealItem < ApplicationRecord
  belongs_to :deal_itemable, polymorphic: true # refers to i) item_group ii) food_item
  has_many :deal_deal_items
  has_many :deals ,through: :deal_deal_items
end
