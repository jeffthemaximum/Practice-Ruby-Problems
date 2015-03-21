# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
#
# Difficulty: easy.

def longest_word(sentence)
  #define longest word
  longest_word_length = 0
  longest_word_x = ""
  
  #split sentence into array
  array = sentence.split
  
  #find length of array
  length = array.length
  
  #iterate through array
  idx = 0
  while (idx < length)
  
    #find length of each word on iteration
    word_length = array[idx].length
    
    #compare length to longest
    if (word_length > longest_word_x.length)
      longest_word_x = array[idx]
    end
    
    #iterate
    idx += 1
    
  end
  
  #return longest
  return longest_word_x
  
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'longest_word("short longest") == "longest": ' +
  (longest_word('short longest') == 'longest').to_s
)
puts(
  'longest_word("one") == "one": ' +
  (longest_word('one') == 'one').to_s
)
puts(
  'longest_word("abc def abcde") == "abcde": ' +
  (longest_word('abc def abcde') == 'abcde').to_s
)
