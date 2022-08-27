class CreateFoodItemOptions < ActiveRecord::Migration[6.1]
  def change
    create_table :food_item_options do |t|
      t.integer :price
      t.references :food_item, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
