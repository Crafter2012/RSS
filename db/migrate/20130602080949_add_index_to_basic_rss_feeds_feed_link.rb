class AddIndexToBasicRssFeedsFeedLink < ActiveRecord::Migration
  def change
	add_index :basic_rss_feeds, :feed_link
  end
end
