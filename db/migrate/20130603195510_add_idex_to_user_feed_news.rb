class AddIdexToUserFeedNews < ActiveRecord::Migration
  def change
  end
  
  
  add_index :user_feed_news, :user_feed_id
  add_index :user_feed_news, :news_id
  add_index :user_feed_news, [:user_feed_id, :news_id], unique: true
end
