require 'twitter'

module ExpeditionEverestTweetsHelper
  def tweetfeed
    #Twitter.search("#expeditioneverest", :count => 20, :result_type => "recent").results.map do |status|
    #  "#{status.from_user}: #{status.text}"
    #end
    Twitter.search("#expeditioneverest", :count => 1).results.first.text
  end
end
