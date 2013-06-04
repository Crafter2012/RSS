class CreateRssFeedNews < ActiveRecord::Migration
  def change
    create_table :rss_feed_news do |t|
      t.integer :rss_feed_id
      t.string :title
      t.string :url
      t.string :author
      t.text :content
      t.datetime :published

      t.timestamps
    end
  end
end
