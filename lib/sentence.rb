class Sentence

  attr_accessor :body, :paragraph

  @@all = []

  def self.all
    @@all
  end

  #loads entire text file as array where each line is an element of array
    def self.load_words
      File.readlines('lib/pos/part-of-speech.txt')
    end

    #returns array of arrays where [1] is PoS
    def self.wordlist
      self.load_words.map do |element|
        element.split(/\t|\n/)[0]
      end
    end

    #grabs a random number of words from the element
    def self.grab_random_num_words
      new_array =[]
      list = wordlist
      (rand(10)).times do new_array << list.sample end
      new_array
    end

    def self.generate
      punctuation = ["!","?",",",";",".",".",".","."]

      sentence_total = grab_random_num_words.join(" ")+punctuation.sample

      while sentence_total[-1] == "," || sentence_total[-1] == ";"
        sentence = grab_random_num_words.join(" ")
        sentence_total += " "+sentence+punctuation.sample
      end

     sentence_total.downcase.capitalize
    end

    def initialize (paragraph)
      @paragraph = paragraph
      @body = self.class.generate
      puts @body
    end

   def save
     @@all << self
   end

end
