class CreateRestaurantSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :restaurant_schedules do |t|
      t.string :day
      t.references :restaurant, null: false, foreign_key: true
      t.time :opening_time
      t.time :closing_time

      t.timestamps
    end
  end
end
