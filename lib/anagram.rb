class Anagram
    attr_accessor :test_word
    def initialize(given_word)
        @test_word = given_word
    end
    def match(array_of_words)
        matched_words = []
        array_of_words.each do |word|
           if word.chars.sort == @test_word.chars.sort
            matched_words.push(word)
           end
             #breakout each arary of words into letters (chars)
        end
        matched_words
    end

end

#instances should respond to a #match instance method that takes an array of possible anagrams
#should return all matches in an array
#if no matches, return an empty array
#%w() array of strings

# Example output: 
# listen = Anagram.new("listen")
# listen.match(%w[enlists google inlets banana])

#iterate over the array and compare each word in the array to @word. 
#1.) check if two words are composed of the same letters (sort?)