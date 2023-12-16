# ** Problem **
  # explicit rules: return hash as a frequency distribution table of letters
  #                 letters are keys, counts are values
  # implicit rules: should not have duplicates 
  #                 keys are strings and maintain casing
  #                 return should be sorted ascending order
  # clarifying questions: should we expect non word characters? (N)
  #
# ** Examples **
  # "F" => 1
  # "R" => 1
  # "T" => 1
  # "c" => 1
  # "e" => 2
# ** Data **
  # arrays for characters, count; assigned to final hash
# ** Algorithm **
  # split statement into array of each character
  # remove white space
  # iterate over array and create hash key with each letter
  # assign hash key to count of that letter
  # return resulting hash
# ** Code **
statement = "The Flintstones Rock"

letters = statement.chars.sort
letters.delete(" ")

p letters.tally