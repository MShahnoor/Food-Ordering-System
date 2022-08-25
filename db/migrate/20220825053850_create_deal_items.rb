class CreateDealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_items do |t|
      t.string :title

      t.timestamps
    end
  end
end
