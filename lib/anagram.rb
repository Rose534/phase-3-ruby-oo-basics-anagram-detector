class Anagram
  def initialize(word)
    @word = word
  end

  def match(possible_anagrams)
    possible_anagrams.select do |possible_anagram|
      next if possible_anagram.downcase == @word.downcase
      possible_anagram.downcase.chars.sort == @word.downcase.chars.sort
    end
  end
end
