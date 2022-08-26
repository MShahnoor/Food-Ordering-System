class Order < ApplicationRecord
  has_one :payment
  has_one :rating
  belongs_to :employee
  belongs_to :order
  belongs_to :customer
  has_many :order_items
end
