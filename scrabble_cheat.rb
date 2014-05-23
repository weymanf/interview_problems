#read in a dictionary file and give all the words
#that you can make with your letters
#i.e "tac" will return "cat", "act"

#takes in a dictionary and returns a hash of all possible words
#dictionary is an array of all words
def parse_dictionary(dictionary)
  possible_words_hash = {}
  dictionary.each do |word|
    word_sort = word.split(//).sort.join("")
    possible_words_hash[word_sort] ||= possible_words_hash[word_sort] = []
    possible_words_hash[word_sort] << word
  end

  possible_words_hash

end

#takes in dictionary, and letters i.e "cat"
def list_of_words(letters, dictionary)

  #select all words with same length
  length_dict = dictionary.select { |word| word.length == letters.length }
  possible_hash = parse_dictionary(length_dict)
  sorted_letters = letters.split(//).sort.join("")
  possible_hash[sorted_letters]

end