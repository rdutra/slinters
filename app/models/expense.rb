class Expense < ActiveRecord::Base
  attr_accessible :date, :concept, :amount, :paymethod, :type
end
