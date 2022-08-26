class AddOrderToRating < ActiveRecord::Migration[6.1]
  def change
    add_reference :ratings, :order, null: false, foreign_key: true
  end
end
