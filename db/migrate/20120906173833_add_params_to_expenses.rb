class AddParamsToExpenses < ActiveRecord::Migration
  def change
    add_column :expenses, :date, :datetime
    add_column :expenses, :concept, :string
    add_column :expenses, :amount, :float
    add_column :expenses, :paymethod, :string
    add_column :expenses, :type, :string
  end
end
