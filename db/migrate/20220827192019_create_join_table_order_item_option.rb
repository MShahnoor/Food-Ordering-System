class CreateJoinTableOrderItemOption < ActiveRecord::Migration[6.1]
  def change
    create_join_table :order_items, :options do |t|
       t.index [:order_item_id, :option_id]
       t.index [:option_id, :order_item_id]
    end
  end
end
