class AddRestaurantToAddons < ActiveRecord::Migration[6.1]
  def change
    add_reference :addons, :restaurant, null: false, foreign_key: true
  end
end
