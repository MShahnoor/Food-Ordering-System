class Order < ApplicationRecord
  has_one :payment
  has_one :rating
  belongs_to :employee
  belongs_to :customer
  has_many :order_items
  has_one :service_charge_payment
end
