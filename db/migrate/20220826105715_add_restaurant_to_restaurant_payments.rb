class AddRestaurantToRestaurantPayments < ActiveRecord::Migration[6.1]
  def change
    add_reference :restaurant_payments, :restaurant, null: false, foreign_key: true
  end
end
