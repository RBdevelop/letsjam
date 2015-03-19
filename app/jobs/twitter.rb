require 'twitter'


#### Get your twitter keys & secrets:
#### https://dev.twitter.com/docs/auth/tokens-devtwittercom
twitter = Twitter::REST::Client.new do |config|
  config.consumer_key = 'zgcLdPY7Xjzt6MyUtxL3ygcFX'
  config.consumer_secret = 'ASIIttx7XPFv78JjTJ7JoUSwZxJ1eLf9coriRmXM9zQPw6kpP1'
  config.access_token = 'zgcLdPY7Xjzt6MyUtxL3ygcFX'
  config.access_token_secret = 'ASIIttx7XPFv78JjTJ7JoUSwZxJ1eLf9coriRmXM9zQPw6kpP1'
end

search_term = URI::encode('#sxsw2015')

SCHEDULER.every '3m', :first_in => 0 do |job|
  begin
    tweets = twitter.search("#{sxswmusic}")

    if tweets
      tweets = tweets.map do |tweet|
        { name: tweet.user.name, body: tweet.text, avatar: tweet.user.profile_image_url_https }
      end
      send_event('twitter_mentions', comments: tweets)
    end
  rescue Twitter::Error
    puts "\e[33mFor the twitter widget to work, you need to put in your twitter API keys in the jobs/twitter.rb file.\e[0m"
  end
end