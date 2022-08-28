class MenuItem < ApplicationRecord
  belongs_to :menu_itemable, polymorphic: true # refers to i) item_group ii) deal
  belongs_to :menu
  belongs_to :restaurant
  has_and_belongs_to_many :addons
end
