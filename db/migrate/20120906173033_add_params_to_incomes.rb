class AddParamsToIncomes < ActiveRecord::Migration
  def change
    add_column :incomes, :date, :datetime
    add_column :incomes, :amount, :float
    add_column :incomes, :concept, :string
    add_column :incomes, :entity, :string
    add_column :incomes, :description, :string
  end
end
