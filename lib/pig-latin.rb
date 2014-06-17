require_relative "pig-latin/version"

module Pig
  module Latin

    def self.pigLatinWord(word)
      i = 0
      noVowel = true
      numbers = /[1234567890]/
      punctuation = ""

      if !/\W+\z/.match(word).nil?
        punctuation = word.slice(-1,word.length)
        word = word.slice(0,word.length-1)
      end


      if !numbers.match(word).nil?
        return word + punctuation
      elsif word[0] == "y"
        word = word.slice(1,word.length) + "yay"
      elsif !/\A[aeiou]+/.match(word).nil?
        word = word + "way"
      elsif /\A[^aeoiu]/.match(word)
        consonants = /[^aeoiuy]+/.match(word).to_s
        word = word.slice(consonants.length,word.length) + consonants + "ay"
      end

      return word + punctuation

    end

    def self.translate(string)
      output = []
      string.split.each { |word|
        output << Pig::Latin.pigLatinWord(word)
      }

      return output.join(" ")
    end

  end
end
