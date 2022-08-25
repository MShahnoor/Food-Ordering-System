class CreateDeals < ActiveRecord::Migration[6.1]
  def change
    create_table :deals do |t|
      t.string :title
      t.integer :price
      t.boolean :is_available

      t.timestamps
    end
  end
end
