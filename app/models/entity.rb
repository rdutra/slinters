class Entity < ActiveRecord::Base
  attr_accessible :name
  
  has_many :incomes
  
  def self.search name
    return Entity.find_or_create_by_name(name) unless name.blank?
  end
  
  def self.search_autocomplete searchString
    unless searchString.empty?
      ent = Entity.where("name ILIKE ?",'%'+searchString+'%').limit(10)
      return ent
    else
      return []
    end
  end
end
