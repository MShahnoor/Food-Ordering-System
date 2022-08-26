class Rating < ApplicationRecord
  belongs_to :order
  belongs_to :customer
end
