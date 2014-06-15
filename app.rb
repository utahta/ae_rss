require 'config/env'
require 'config/db'
require 'sinatra/base'
require 'models/rssfile'

class App < Sinatra::Base

  get '/news/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'news').first
    erb :rss, locals: {feed: rss.feed}
  end

  get '/kwkm/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'kwkm').first
    erb :rss, locals: {feed: rss.feed}
  end

  get '/momorikobuta/rss', :provides => 'atom' do
    rss = RssFile.where(code: 'momorikobuta').first
    erb :rss, locals: {feed: rss.feed}
  end

end
