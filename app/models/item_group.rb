class ItemGroup < ApplicationRecord
  has_many :options, dependent: :destroy
  belongs_to :restaurant
end
