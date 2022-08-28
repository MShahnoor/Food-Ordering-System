class AddDealItemAbleToDealItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :deal_items, :deal_itemable, polymorphic: true, null: false
  end
end
