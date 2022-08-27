class Discount < ApplicationRecord
  has_many :food_items
  has_many :discount_availability_schedules
end
