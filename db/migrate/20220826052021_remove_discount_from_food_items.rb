class RemoveDiscountFromFoodItems < ActiveRecord::Migration[6.1]
  def change
    remove_reference :food_items, :discount, null: false, foreign_key: true
  end
end
