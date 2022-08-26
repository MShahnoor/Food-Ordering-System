class AddOrderToPayment < ActiveRecord::Migration[6.1]
  def change
    add_reference :payments, :order, foreign_key: true
  end
end

