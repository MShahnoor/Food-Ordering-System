class RestaurantPayment < ApplicationRecord
  belongs_to :restaurant
  belongs_to :order

  validates :order_id, uniqueness: true
end
