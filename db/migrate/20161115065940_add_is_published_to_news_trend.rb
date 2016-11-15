class AddIsPublishedToNewsTrend < ActiveRecord::Migration[5.0]
  def change
    add_column :news_trends, :is_published, :boolean, default: false
  end
end
