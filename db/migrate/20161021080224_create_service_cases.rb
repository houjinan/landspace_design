class CreateServiceCases < ActiveRecord::Migration[5.0]
  def change
    create_table :service_cases do |t|
      t.string :service_type
      t.string :title_en
      t.string :title_zh
      t.text :description_en
      t.text :description_zh

      t.timestamps
    end
  end
end
