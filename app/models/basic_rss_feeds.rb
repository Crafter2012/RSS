class BasicRssFeeds < ActiveRecord::Base
  attr_accessible :feed_link, :name, :site_link, :site_logo_link
  
  has_many :rss_feed_news, foreign_key: "rss_feed_id", dependent: :destroy
  
  validates :name, presence: true, length: { maximum: 50 }
  validates :feed_link, presence: true, length: {maximum: 100}, uniqueness: true
  validates :site_link, presence: true, length: { maximum: 50 }
  
end
