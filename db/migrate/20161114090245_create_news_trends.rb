class CreateNewsTrends < ActiveRecord::Migration[5.0]
  def change
    create_table :news_trends do |t|
      t.string :title_zh
      t.string :title_en
      t.text :content_zh
      t.text :content_en
      t.string :cover_image
      t.integer :scan_count

      t.timestamps
    end
  end
end
