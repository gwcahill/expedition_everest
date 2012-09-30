require 'rubygems'
require 'open-uri'
require 'simple-rss'

module NewsHelper
  def news_feed
    rss = SimpleRSS.parse(open('http://feeds.feedburner.com/disneyparks').read)

    rss.items.first(5) do |i|
      puts "Title: #{i.title}"
      puts "Link: #{i.link}"
    end
  end
end