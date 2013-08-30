class CreatePropertyDefinitions < ActiveRecord::Migration
  def change
    create_table :property_definitions do |t|
      t.string :name
      t.string :category

      t.timestamps
    end
  end
end
