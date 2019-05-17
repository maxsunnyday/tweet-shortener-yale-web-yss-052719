# Write your code here.
def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(string)
  array = string.split(" ")
  short_array = []
  array.collect do |word|
    if dictionary.keys.include?(word)
      short_array << dictionary[word]
    else
      short_array << word
    end
  end
  short_array.join(" ")
end

def bulk_tweet_shortener(tweets)
  short_tweets = []
  puts tweets.each do |tweet|
    short_tweets << word_substituter(tweet)
  end
end
