class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.datetime :date
      t.string :method
      t.integer :amount

      t.timestamps
    end
  end
end
