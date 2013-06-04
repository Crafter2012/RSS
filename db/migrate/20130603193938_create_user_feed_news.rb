class CreateUserFeedNews < ActiveRecord::Migration
  def change
    create_table :user_feed_news do |t|
      t.integer :user_feed_id
      t.integer :news_id
      t.boolean :readed

      t.timestamps
    end
  end
end
