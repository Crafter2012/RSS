# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130604021331) do

  create_table "basic_rss_feeds", :force => true do |t|
    t.string   "name"
    t.string   "site_link"
    t.string   "feed_link"
    t.string   "site_logo_link"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "basic_rss_feeds", ["feed_link"], :name => "index_basic_rss_feeds_on_feed_link"

  create_table "rss_feed_news", :force => true do |t|
    t.integer  "rss_feed_id"
    t.string   "title"
    t.string   "url"
    t.string   "author"
    t.text     "content"
    t.datetime "published"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
    t.string   "summary"
  end

  create_table "user_feed_news", :force => true do |t|
    t.integer  "user_feed_id"
    t.integer  "news_id"
    t.boolean  "readed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "user_feed_news", ["news_id"], :name => "index_user_feed_news_on_news_id"
  add_index "user_feed_news", ["user_feed_id", "news_id"], :name => "index_user_feed_news_on_user_feed_id_and_news_id", :unique => true
  add_index "user_feed_news", ["user_feed_id"], :name => "index_user_feed_news_on_user_feed_id"

  create_table "user_rss_feeds", :force => true do |t|
    t.integer  "user_id"
    t.integer  "rss_feed_id"
    t.time     "last_update"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "user_rss_feeds", ["rss_feed_id"], :name => "index_user_rss_feeds_on_rss_feed_id"
  add_index "user_rss_feeds", ["user_id", "rss_feed_id"], :name => "index_user_rss_feeds_on_user_id_and_rss_feed_id", :unique => true
  add_index "user_rss_feeds", ["user_id"], :name => "index_user_rss_feeds_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "password"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           :default => false
  end

  add_index "users", ["remember_token"], :name => "index_users_on_remember_token"

end
