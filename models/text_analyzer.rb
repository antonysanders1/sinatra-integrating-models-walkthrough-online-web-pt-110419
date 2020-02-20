# Your TextAnalyzer model code will go here.
require'pry'

class TextAnalyzer
  attr_reader :text
 
  def initialize(text)
    @text = text.downcase
  end
 
  def count_of_words
    words = text.split(" ")
    words.count
  end
 
  def count_of_vowels
    text.scan(/[aeoui]/).count
  end
 
  def count_of_consonants
    text.scan(/[bcdfghjklmnpqrstvwxyz]/).count
  end
 
  def most_used_letter
    s1 = text.gsub(/[^a-z]/, '') # gets rid of spaces
    arr = s1.split('')
    arr1 = arr.uniq
    hash = {}
    binding.pry
 
    arr1.map { |c| hash[c] =  arr.count(c) }
 
    biggest = { hash.keys.first => hash.values.first }
 
    hash.each do |key, value|
      if value > biggest.values.first
        biggest = {}
        biggest[key] = value
       
      end
    end
 
    biggest
  end
end