class Restaurant < ApplicationRecord
  has_many :employees
  has_many :menus
end
