class BasicRssFeeds < ActiveRecord::Base
  attr_accessible :feed_link, :name, :site_link, :site_logo_link
  validates :name, presence: true, length: { maximum: 50 }
  validates :feed_link, presence: true, length: {maximum: 100}
  validates :site_link, presence: true, length: { maximum: 50 }
  
end
