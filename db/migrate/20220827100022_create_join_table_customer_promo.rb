class CreateJoinTableCustomerPromo < ActiveRecord::Migration[6.1]
  def change
    create_join_table :customers, :promos do |t|
      # t.index [:customer_id, :promo_id]
      # t.index [:promo_id, :customer_id]
    end
  end
end
