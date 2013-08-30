class AddDefaultToPropertyDefinitions < ActiveRecord::Migration
  def change
    add_column :property_definitions, :default, :float
  end
end
