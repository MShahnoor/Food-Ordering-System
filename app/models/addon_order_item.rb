class AddonOrderItem < ApplicationRecord
  belongs_to :order_item
  belongs_to :addon
end
