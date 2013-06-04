class UserRssFeeds < ActiveRecord::Base
  attr_accessible :last_update, :rss_feed_id, :user_id
  belongs_to :user
  has_many :basic_rss_feeds
  validates :rss_feed_id, presence: true
  validates :user_id, presence: true
  
end
