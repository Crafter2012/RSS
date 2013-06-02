class CreateUserRssFeeds < ActiveRecord::Migration
  def change
    create_table :user_rss_feeds do |t|
      t.integer :user_id
      t.integer :rss_feed_id
      t.time :last_update

      t.timestamps
    end
  end
end
