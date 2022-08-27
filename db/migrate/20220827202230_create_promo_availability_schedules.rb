class CreatePromoAvailabilitySchedules < ActiveRecord::Migration[6.1]
  def change
    create_table :promo_availability_schedules do |t|
      t.references :promo, null: false, foreign_key: true
      t.datetime :start_date
      t.datetime :end_date

      t.timestamps
    end
  end
end
