class AddRestaurantToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :restaurant, null: false, foreign_key: true
  end
end
