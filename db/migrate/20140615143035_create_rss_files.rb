class CreateRssFiles < ActiveRecord::Migration
  def up
    create_table :rss_files do |t|
      t.string  :code
      t.text    :feed
      t.timestamp
    end
  end

  def down
    drop_table :rss_files
  end
end
