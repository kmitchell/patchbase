class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :real_name
      t.string :artist_name
      t.text :bio
      t.string :location
      t.string :soundcloud_url
      t.string :twitter_url
      t.string :website_url

      t.timestamps
    end
  end
end
