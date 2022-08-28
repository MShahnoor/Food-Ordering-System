class AddRestaurantToItemGroups < ActiveRecord::Migration[6.1]
  def change
    add_reference :item_groups, :restaurant, null: false, foreign_key: true
  end
end
