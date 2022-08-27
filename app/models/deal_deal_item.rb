class DealDealItem < ApplicationRecord
  belongs_to :deal
  belongs_to :deal_item
  belongs_to :option
end
