class CreateConfigEntries < ActiveRecord::Migration
  def change
    create_table :config_entries do |t|

      t.timestamps
    end
  end
end
