class RemoveEntityFromIncomes < ActiveRecord::Migration
  def up
    remove_column :incomes, :entity
      end

  def down
    add_column :incomes, :entity, :string
  end
end
