namespace :db do
  desc "Fill database with basic_feeds"
  task fill_basic: :environment do
    
	BasicRssFeeds.create!(feed_link: "http://www.bbc.co.uk/russian/russia/index.xml" ,
	name:  "BBCRussian.com | Россия",
	site_link: "http://www.bbc.co.uk/russian/russia/",
	site_logo_link: "http://www.bbc.co.uk/favicon.ico")
    
	BasicRssFeeds.create!(feed_link:  "http://news.yandex.ru/computers.rss",
	name:  "Яндекс.Новости: Hi-Tech",
	site_link: "http://news.yandex.ru/computers.html?ncrnd=7943",
	site_logo_link: "http://yandex.st/lego/_/l2V968dCa1zMr5TTWgVJQP6xPVU.ico")
    
	BasicRssFeeds.create!(feed_link: "http://ria.ru/export/rss2/science/index.xml" ,
	name:  "РИА Новости",
	site_link: "http://ria.ru/science/",
	site_logo_link: "http://ria.ru/favicon.ico")
    
	BasicRssFeeds.create!(feed_link: "http://news.yandex.ru/security.rss" ,
	name:  "Яндекс.Новости: Безопасность",
	site_link: "http://news.yandex.ru/security.html",
	site_logo_link: "http://yandex.st/lego/_/l2V968dCa1zMr5TTWgVJQP6xPVU.ico")
    
  end
end