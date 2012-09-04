class Income < ActiveRecord::Base
  attr_accessible :date, :amount, :concept, :entity, :description
  belongs_to :user
  validates :date, :presence => true 
  validates :amount, :presence => true 
  validates :concept, :presence => true, :length => { :maximum => 64 }
  validates :entity, :presence => true 
end
