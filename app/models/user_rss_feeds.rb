class UserRssFeeds < ActiveRecord::Base
  attr_accessible :last_update, :rss_feed_id, :user_id
end
