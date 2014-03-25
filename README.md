Kata for Finding Anagrams in a Dictionary
http://codekata.com/kata/kata06-anagrams/

Approach -

Selecting one word from a dictionary, iterate over the dictionary to find anagrams.

Anagrams are identified as words that have the same letters as the the word in question.

Approach splits each word into an array of its downcased letters and alphabetizes them. If alphabetized word arrays match, the two words are anagrams.

Anagrams are added to an anagram array for each word.

TBD -

The approach is brute force, is there room for optimization?

Can words be compared based on size first to bypass need to determine if the #is_anagram? method should be called?

Are there complications in the approach not considered? Such as words with non-English characters? Or words with punctuation?
