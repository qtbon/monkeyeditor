class Property < ActiveRecord::Base
  attr_accessible :config_entry_id, :property_definition_id, :value
  belongs_to :config_entry
  belongs_to :property_definition
end
