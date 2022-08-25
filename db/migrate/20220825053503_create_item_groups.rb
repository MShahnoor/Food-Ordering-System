class CreateItemGroups < ActiveRecord::Migration[6.1]
  def change
    create_table :item_groups do |t|
      t.string :title
      t.boolean :is_available

      t.timestamps
    end
  end
end
