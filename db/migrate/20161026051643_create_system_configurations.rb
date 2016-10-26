class CreateSystemConfigurations < ActiveRecord::Migration[5.0]
  def change
    create_table :system_configurations do |t|
      t.string :name
      t.string :configuration_type
      t.text :parameters

      t.timestamps
    end
  end
end
