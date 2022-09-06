class Customer < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :ratings
  has_many :orders
  has_and_belongs_to_many :promos
  has_many :customer_addresses

  def full_name
    "#{first_name} #{last_name}"
  end
end
