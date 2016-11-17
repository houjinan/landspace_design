class AddPhraseToNewsTrend < ActiveRecord::Migration[5.0]
  def change
    add_column :news_trends, :phrase_zh, :text
    add_column :news_trends, :phrase_en, :text
  end
end
