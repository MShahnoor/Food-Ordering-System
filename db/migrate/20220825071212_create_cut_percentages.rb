class CreateCutPercentages < ActiveRecord::Migration[6.1]
  def change
    create_table :cut_percentages do |t|
      t.decimal :value

      t.timestamps
    end
  end
end
