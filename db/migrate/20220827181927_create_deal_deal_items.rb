class CreateDealDealItems < ActiveRecord::Migration[6.1]
  def change
    create_table :deal_deal_items do |t|
      t.references :deal, null: false, foreign_key: true
      t.references :deal_item, null: false, foreign_key: true
      t.references :option, null: false, foreign_key: true

      t.timestamps
    end
  end
end
