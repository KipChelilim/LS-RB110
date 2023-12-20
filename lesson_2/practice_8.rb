# ** Problem **
  # explicit rules: output all vowels from strings in hash
  #                 use each method
  # implicit rules: extract from all nested arrays
  #
  # clarifying questions: assume all keys will be symbols (not strings)? (y)
  #                       are there subarrays? (y)
  #                       are all elements in subarrays single word strings? (y)
  #                       do i need to specifically use each on the hash? (y)
  #                       are there any hashes nested within values? (n)
  #                       "sometimes y"? (n)
# ** Examples **
  # :first => e u i

# ** Data **
  # hash values, array of all characters,

# ** Algorithm **
  # initialize array containing all vowels
  # take each value:
  #   flatten the all sub-arrays
  #   join all elements
  #   split elements into individual characters
  #   take each character
  #     print the character if its includeded in the vowels array

# ** Code **
hsh = {
  first: ['the', 'quick'],
  second: ['brown', 'fox'],
  third: ['jumped'],
  fourth: ['over','the', 'lazy', 'dog']
}

vowels_arr = %w(a e i o u)
count = 0

hsh.each_value do |sub_array|
  char_arr = sub_array.flatten(-1).join.chars
  char_arr.each do |character|
    puts "##{count += 1}: #{character}" if vowels_arr.include?(character)
  end
end