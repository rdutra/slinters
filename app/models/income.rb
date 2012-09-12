class Income < ActiveRecord::Base
  attr_accessible :user_id, :date, :amount, :concept, :entity_id, :description
  belongs_to :user
  belongs_to :entity
  
  validates :amount, :presence => true 
  validates :concept, :presence => true, :length => { :maximum => 64 }
end
