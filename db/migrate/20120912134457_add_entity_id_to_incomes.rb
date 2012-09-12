class AddEntityIdToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :entity_id, :integer
  end
end
