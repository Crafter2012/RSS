class BasicRssFeedController < ApplicationController
  def new
  end

  def create
  end

  def update
  end

  def delete
  end
  
  def show
  @BasicRssFeeds = BasicRssFeeds.all
  end
  def get_user_feeds(user)
  end
end
