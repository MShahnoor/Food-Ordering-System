class Option < ApplicationRecord
  belongs_to :restaurant
  belongs_to :item_group
end
