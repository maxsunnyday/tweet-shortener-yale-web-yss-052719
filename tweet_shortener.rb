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
    dictionary.each do |key, value|
      if key == word
        word = value
      end
    end
  end
  array.join(" ")
end
