require 'debugger'

dictionary = []

File.open("words.txt","r").each_line do |line|
  dictionary << line.force_encoding('binary').encode('utf-8', :invalid => :replace, :undef => :replace).chop
end

dictionary.delete_if {|x| x.empty?}

def anagrams_for_word(word,dict)
  anagrams = []

  dict.each do |w|
    anagrams.push(w) if is_anagram?(word, w)
  end

  anagrams

end

def is_anagram?(word1, word2)

  alphabetized1 = word1.split("").map! { |w| w.downcase}.sort
  alphabetized2 = word2.split("").map! { |w| w.downcase}.sort

  alphabetized1 == alphabetized2
end

all_anagrams = []

0.upto(dictionary.length) do |int|
  all_anagrams << anagrams_for_word(dictionary[int], dictionary)
end

puts all_anagrams.size




