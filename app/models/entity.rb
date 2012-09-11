class Entity < ActiveRecord::Base
  attr_accessible :name
  
  def search name
    return Entity.find_or_create_by_name(name) unless name.blank?
  end
end
