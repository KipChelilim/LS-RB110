# ** Problem **
  # explicit rules: first character of each word should be capitalized
  #
  # implicit rules: non-mutating version (?)
  #
  # clarifying questions: should it be nonmutating? (y)
  #
  #
# ** Examples **
  # titleize("the flintstones rock") => "The Flintstones Rock"
  # titleize("the flintstones !rock") => "The Flintstones !rock"
# ** Data **
  # strings, array for upcasing
# ** Algorithm **
  # split sentencce into array of words
  # iterate across words and upcase first character
  # concatenate elements in array with space
  # return new string sentence
# ** Code **
def titleize(string)
  words_array = string.split(' ')
  words_array.each { |word| word.capitalize! }
  words_array.join(' ')
end


words = "the flintstones rock"

p titleize(words)