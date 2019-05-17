# Write your code here.
require "pry"

def dictionary
  {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
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
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweets)
  if condition
    tweets.each do |tweet|
      puts word_substituter(tweet)
    end
  else
    tweets
  end
end
