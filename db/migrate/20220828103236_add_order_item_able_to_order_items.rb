class AddOrderItemAbleToOrderItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :order_items, :order_itemable, polymorphic: true, null: false
  end
end
