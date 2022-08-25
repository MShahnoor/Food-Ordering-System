class RemoveItemGroupFromFoodItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :food_items, :item_group, null: false, foreign_key: true
  end
end
