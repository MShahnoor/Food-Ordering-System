class Employee < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :invitable, :database_authenticatable, :registerable,:recoverable, :rememberable, :validatable

  belongs_to :restaurant
  has_many :subordinates, class_name: 'Employee',foreign_key: "manager_id"
  belongs_to :manager, class_name: 'Employee', optional: true
  has_many :orders

  def full_name
    "#{first_name} #{last_name}"
  end

end
