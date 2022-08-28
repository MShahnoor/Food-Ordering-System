class CreateMenus < ActiveRecord::Migration[6.1]
  def change
    create_table :menus do |t|
      t.string :title
      t.boolean :is_available

      t.timestamps
    end
  end
end
