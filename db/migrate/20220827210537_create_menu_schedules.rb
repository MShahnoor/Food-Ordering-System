class CreateMenuSchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :menu_schedules do |t|
      t.string :day
      t.references :menu, null: false, foreign_key: true
      t.time :starting_time
      t.time :ending_time

      t.timestamps
    end
  end
end
