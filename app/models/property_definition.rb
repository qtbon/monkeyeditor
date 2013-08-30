class PropertyDefinition < ActiveRecord::Base
  attr_accessible :category, :name, :default
  has_many :properties
end
