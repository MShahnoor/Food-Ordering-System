class AddDiscountTypeToDiscounts < ActiveRecord::Migration[6.1]
  def change
    add_column :discounts, :discount_type, :string
  end
end
