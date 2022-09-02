class Employee < ApplicationRecord
  devise :invitable, :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  belongs_to :restaurant,optional: true
  has_many :subordinates, class_name: 'Employee',foreign_key: "manager_id"
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end
end
