class Sentence < ActiveRecord::Base

    #grabs a random number of words from the element
    def self.grab_random_num_words
      Word.limit(rand(10)).order("RANDOM()").map do |word_row|
        word_row.entry
      end
    end

    def self.generate

      punctuation = ["!","?",",",";",".",".",".","."]

      sentence_total = grab_random_num_words.join(" ")+punctuation.sample

      while sentence_total[-1] == "," || sentence_total[-1] == ";"
        sentence = grab_random_num_words.join(" ")
        sentence_total += " "+sentence+punctuation.sample
      end

    sentence_total.capitalize
    end

end
