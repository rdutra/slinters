class Income < ActiveRecord::Base
  attr_accessible :user_id, :date, :amount, :concept, :entity_id, :description
  belongs_to :user
  belongs_to :entity
  
  validates :amount, :presence => true, :numericality => { :only_integer => true }
  validates :concept, :presence => true, :length => { :maximum => 64 }
  validates :date, :presence => true
  validates :user_id, :presence => true, :numericality => { :only_integer => true }
  validates :entity_id, :presence => true, :numericality => { :only_integer => true }
end
