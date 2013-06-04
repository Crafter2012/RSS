class RssFeedNews < ActiveRecord::Base
  attr_accessible :author, :content, :published, :rss_feed_id, :title, :url, :summary
  
  belongs_to :basic_rss_feeds
  
  validates :rss_feed_id, presence: true
  validates :url, presence: true
  validates :title, presence: true
end
