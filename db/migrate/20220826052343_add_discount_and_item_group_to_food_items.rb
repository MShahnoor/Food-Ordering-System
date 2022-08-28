class AddDiscountAndItemGroupToFoodItems < ActiveRecord::Migration[6.1]
  def change
    add_reference :food_items, :discount, null: true, foreign_key: true
    add_reference :food_items, :item_group, null: true, foreign_key: true
  end
end
