dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, dictionary)
  split_string = string.downcase.split(" ")
  matches = Hash.new(0)

  split_string.each do |string_word|
    dictionary.each do |dictionary_word|
      if string_word.include?(dictionary_word)
        matches[dictionary_word] += 1
      end
    end

  end
  matches
end

p substrings("below", dictionary)
# { "below" => 1, "low" => 1 }

p substrings("Howdy partner, sit down! How's it going?", dictionary)
# # { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }
