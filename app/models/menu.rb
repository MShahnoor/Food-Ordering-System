class Menu < ApplicationRecord
  belongs_to :restaurant
  has_many :menu_items
  has_many :menu_schedules
end
