class AddSelfJoinToEmployees < ActiveRecord::Migration[6.1]
  def change
    add_reference :employees, :manager, foreign_key: { to_table: :employees }
  end
end
