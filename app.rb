require 'config/env'
require 'config/db'
require 'sinatra/base'
require 'models/rssfile'

class App < Sinatra::Base

  get '/news/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'news').first
    feed = rss.nil? ? '' : rss.feed
    erb :rss, locals: {feed: feed}
  end

  get '/kwkm/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'kwkm').first
    feed = rss.nil? ? '' : rss.feed
    erb :rss, locals: {feed: feed}
  end

  get '/momorikobuta/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'momorikobuta').first
    feed = rss.nil? ? '' : rss.feed
    erb :rss, locals: {feed: feed}
  end

end
