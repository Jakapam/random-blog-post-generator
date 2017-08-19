
text_file = File.readlines('db/words.txt')

word_array = text_file.each do |element|
  Word.create(entry: element.split(/\t|\n/)[0])
end
