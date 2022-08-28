class CreateAddonOrderItems < ActiveRecord::Migration[6.1]
  def change
    create_table :addon_order_items do |t|
      t.integer :quantity
      t.references :order_item, null: false, foreign_key: true
      t.references :addon, null: false, foreign_key: true

      t.timestamps
    end
  end
end
