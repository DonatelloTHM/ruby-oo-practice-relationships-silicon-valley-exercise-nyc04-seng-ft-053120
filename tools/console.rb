require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end
# Insert code here to run before hitting the binding.pry
# This is a convenient place to define variables and/or set up new object instances,
# so they will be available to test and play around with in your console

s1 = Startup.new("twitter", "Jack", "twitter.com")
s2 = Startup.new("facebook", "Mark", "facebook.com")
s3 = Startup.new("reddit", "Satoshi", "reddit.com")
s4= Startup.new("mainstreet", "Satoshiaaa", "twitter.com")

# name, total_worth
v1 = VentureCapitalist.new("Dan", 2_000_000_000)
v2 = VentureCapitalist.new("Warren Buffet", 100_000)
v3 = VentureCapitalist.new("Mark Cuban", 4_0000_000_000_000)

# startup, venture_capitalist, type, investment
f1 = FundingRound.new(s1, v1, "seed", 500000)
f2 = FundingRound.new(s1, v2, "seed", 900)
f3 = FundingRound.new(s3, v2, "seed", 700)
f4 = FundingRound.new(s1, v2, "seed", 9000)
f4 = FundingRound.new(s4, v2, "seed", 200000)
binding.pry

0 #leave this here to ensure binding.pry isn't the last line