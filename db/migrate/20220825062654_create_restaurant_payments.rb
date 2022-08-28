class CreateRestaurantPayments < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_payments do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
