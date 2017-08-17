class WordFormatter

#loads entire text file as array where each line is an element of array
  def self.load_words
    File.readlines('lib/pos/part-of-speech.txt')
  end

  #splits text row into consituent words by line and returns that array
  def self.element_splitter(element)
    element.split(/\t|\n/)
  end

  #organizes words into parts of speech
  def self.word_organizer
  end


end
