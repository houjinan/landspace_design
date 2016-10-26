class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name_en
      t.string :name_zh
      t.text :description_en
      t.text :description_zh
      t.string :head_avatar
      t.string :works_file

      t.timestamps
    end
  end
end
