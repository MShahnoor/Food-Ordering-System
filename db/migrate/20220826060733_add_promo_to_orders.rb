class AddPromoToOrders < ActiveRecord::Migration[6.1]
  def change
    add_reference :orders, :promo, null: true, foreign_key: true
  end
end
