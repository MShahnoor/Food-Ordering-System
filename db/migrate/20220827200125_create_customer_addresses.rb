class CreateCustomerAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_addresses do |t|
      t.text :address
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
