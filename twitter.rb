require "open-uri"
require 'net/http'

remote_base_url = "https://api.twitter.com/1.1/"
twitter_user = "@ChibuikeUzoechi"
remote_full_url = remote_base_url + twitter_user

uri = URI(remote_full_url)
response = Net::HTTP.get(uri)
#JSON.parse(response)

tweets = open(response).read

my_local_filename = twitter_user + "-tweets.xml"
my_local_file = open(my_local_filename, "w")
    my_local_file.write(tweets)    
my_local_file.close