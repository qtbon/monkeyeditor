class CreateProperties < ActiveRecord::Migration
  def change
    create_table :properties do |t|
      t.integer :config_entry_id
      t.integer :property_definition_id
      t.float :value

      t.timestamps
    end
  end
end
