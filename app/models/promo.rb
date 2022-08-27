class Promo < ApplicationRecord
  has_many :orders
  has_and_belongs_to_many :customers
  has_many :promo_availability_schedule
end
