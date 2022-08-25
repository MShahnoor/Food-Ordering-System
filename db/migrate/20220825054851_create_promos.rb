class CreatePromos < ActiveRecord::Migration[6.1]
  def change
    create_table :promos do |t|
      t.string :title
      t.string :type
      t.integer :value
      t.string :status

      t.timestamps
    end
  end
end
