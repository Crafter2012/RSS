class BasicRssFeedController < ApplicationController
  def new
  @NewFeed = BasicRssFeeds.new
  end

  def create
  @NewFeed = Feedzirra::Feed::fetch_and_parse(params[:BasicRssFeeds][:feed_link])
  #@param = params[:BasicRssFeeds][:feed_link]
	if !@NewFeed.nil?
	  @Feed_Exist = BasicRssFeeds.find_by_feed_link(@NewFeed.feed_url)
	  if @Feed_Exist then 
		render action: "new" 
	  else
	    add_new_feed(@NewFeed)
		redirect_to catalog_path
	  end
	else
	  render action: "new" 
	end
  end

  def update
  end

  def delete
  BasicRssFeeds.find_by_id(params[:id]).destroy
    flash[:success] = "Лента удалена"
  redirect_to :back
  end
  
  def show
  @BasicRssFeeds = BasicRssFeeds.all
  end
  
  def add_new_feed(feed)
    if @RssFeed=BasicRssFeeds.create(feed_link: feed.feed_url ,
	  name:  feed.title,
	  site_link: feed.url,
	  site_logo_link: feed.url + "/favicon.ico")
	    fill_feed_news(@NewFeed,@RssFeed.id)
    else
	  render action: "new" 
	end
  end
  
  def fill_feed_news(feed,rssFeedId)
	feed.entries.each do |entry| 
		@News=RssFeedNews.create!(rss_feed_id: rssFeedId,
		title: entry.title,
		author: entry.author,
		summary: entry.summary,
		published: entry.published,
		url: entry.url
		)
	
	end
  end
  
  def feed_exist?(feed_link)
    BasicRssFeed.Find(feed_link)
	  
  end
  
  def show_feed_news
    @Feed = BasicRssFeeds.find(params[:id])
	@er = params[:id]
  end
  
  def get_user_feeds(user)
  end
  
  def show_user_feeds(user)
  end
  
  def show_user_news(user)
  end
end
