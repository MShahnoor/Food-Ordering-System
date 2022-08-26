class AddCustomerToRatings < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :customer, null: false, foreign_key: true
  end
end
