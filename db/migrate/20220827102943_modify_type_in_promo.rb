class ModifyTypeInPromo < ActiveRecord::Migration[6.1]
  def change
    remove_column :promos, :type, :string
    add_column :promos, :promo_type, :string
  end
end
