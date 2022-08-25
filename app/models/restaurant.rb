class Restaurant < ApplicationRecord
  has_many :employees
  has_many :menus
  has_many :menu_items
  has_many :options
end
