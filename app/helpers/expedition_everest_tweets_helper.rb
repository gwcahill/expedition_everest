require 'twitter'

module ExpeditionEverestTweetsHelper
  def tweetfeed
    @tweets = []
    Twitter.search("#expeditioneverest", :count => 15, :result_type => "recent").results.map do |status|
      @tweets << "#{status.from_user}: #{status.text}"
    end
    @tweets
  end
end
