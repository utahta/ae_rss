$:.unshift(File.join(File.dirname(__FILE__), '..'))
require 'ae_rss_maker'
require 'config/env'
require 'config/db'
require 'models/rssfile'

id = ENV['AE_RSS_ID']
password = ENV['AE_RSS_PASSWD']

puts 'Fetching news...'
rss = AeRssMaker.news(id, password)
RssFile.find_or_create_by(code:'news') do |rssfile|
  rssfile.feed = rss.to_s
  rssfile.save
end

puts 'Fetching kwkm...'
rss = AeRssMaker.kwkm(id, password)
RssFile.find_or_create_by(code:'kwkm') do |rssfile|
  rssfile.feed = rss.to_s
  rssfile.save
end

puts 'Fetching momorikobuta...'
rss = AeRssMaker.momorikobuta(id, password)
RssFile.find_or_create_by(code:'momorikobuta') do |rssfile|
  rssfile.feed = rss.to_s
  rssfile.save
end
