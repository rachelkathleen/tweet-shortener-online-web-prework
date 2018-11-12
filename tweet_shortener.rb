def dictionary
  dictionary = {
  "too" => "2",
  "to" => "2",
  "two" =>"2",
  "four" => "4",
  "for" => "4",
  "be" => "b",
  "you" => "u",
  "at" => "@",
  "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split.collect do |word|
  if dictionary.keys.include?(word.downcase)
    word = dictionary[word.downcase]
  else
    word
  end
  end.join(" ")
end

def bulk_tweet_shortener(tweet)
  tweets.each do |tweet|
     puts word_substituter(tweet)
   end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    shorter_tweet = word_substituter(tweet)
  else
    tweet
  end
  if shorter_tweet.length > 140
    shorter_tweet.truncate(140)
  else 
    shorter_tweet
  end
end
