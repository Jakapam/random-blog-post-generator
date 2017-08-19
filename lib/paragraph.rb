class Paragraph < ActiveRecord::Base

  # attr_accessor :current_paragraph
  #
  # @@paragraphs = []
  #
  # def self.paragraphs
  #   @@paragraphs
  # end
  #
  # def save_and_clear
  #   @@paragraphs << @current_paragraph
  #   @paragraph = ''
  # end
  #
  # def construct_paragraph
  #   sentences = Sentence.all.inject('') do |paragraph, sentence|
  #     sentence.paragraph == self ? paragraph + " " + sentence.body : paragraph
  #   end
  #  @current_paragraph = sentences
  # end


end
