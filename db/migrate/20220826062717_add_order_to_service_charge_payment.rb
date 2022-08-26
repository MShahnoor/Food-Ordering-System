class AddOrderToServiceChargePayment < ActiveRecord::Migration[6.1]
  def change
    add_reference :service_charge_payments, :order, null: false, foreign_key: true
  end
end
