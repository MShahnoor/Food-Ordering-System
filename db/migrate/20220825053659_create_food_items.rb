class CreateFoodItems < ActiveRecord::Migration[6.1]
  def change
    create_table :food_items do |t|
      t.string :title

      t.timestamps
    end
  end
end
