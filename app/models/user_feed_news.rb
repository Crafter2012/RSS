class UserFeedNews < ActiveRecord::Base
  attr_accessible :news_id, :readed, :user_feed_id
end
