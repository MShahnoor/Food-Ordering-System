class CreateRestaurants < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.boolean :is_available

      t.timestamps
    end
  end
end
