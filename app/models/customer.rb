class Customer < ApplicationRecord
  has_many :ratings
  has_many :orders
end
