class CreateOrderItemFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :order_item_food_items do |t|
      t.references :order_item, null: false, foreign_key: true
      t.integer :deal_id
      t.integer :item_group_id
      t.references :food_item, null: false, foreign_key: true

      t.timestamps
    end
  end
end
