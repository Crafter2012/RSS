class AddIndexUserIdToUserRssFeeds < ActiveRecord::Migration
  def change
  end
  add_index :user_rss_feeds, :user_id
  add_index :user_rss_feeds, :rss_feed_id
  add_index :user_rss_feeds, [:user_id, :rss_feed_id], unique: true
end
