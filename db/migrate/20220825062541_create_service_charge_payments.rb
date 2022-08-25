class CreateServiceChargePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :service_charge_payments do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
