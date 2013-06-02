class CreateBasicRssFeeds < ActiveRecord::Migration
  def change
    create_table :basic_rss_feeds do |t|
      t.string :name
      t.string :site_link
      t.string :feed_link
      t.string :site_logo_link

      t.timestamps
    end
  end
end
