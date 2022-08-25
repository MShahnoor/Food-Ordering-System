class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.datetime :time_placed
      t.datetime :time_received, null:true
      t.string :order_status
      t.boolean :is_deleted

      t.timestamps
    end
  end
end
