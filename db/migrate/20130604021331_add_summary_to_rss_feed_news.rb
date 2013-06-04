class AddSummaryToRssFeedNews < ActiveRecord::Migration
  def change
    add_column :rss_feed_news, :summary, :string 
  end
end
