class RemoveTypeFromDiscounts < ActiveRecord::Migration[6.1]
  def change
    remove_column :discounts, :type, :string
  end
end
