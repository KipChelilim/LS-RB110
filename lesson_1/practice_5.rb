# ** Problem **
  # explicit rules: first name from the array meeting criteria
  #                 return value should be the index position
  # implicit rules: order matters, ignore subsequent elements
  #                 case matters, should match pattern (Q)
  # clarifying questions: case sensitive?  (assume yes)
  #
  #
# ** Examples **
  # Fred => no return
  # Barney => no return
  # Betty => 3
  # Beth = > no return, hypothetical entry would come after Betty
# ** Data **
  # integer output, string evaluation, maybe regex for pattern matching?
# ** Algorithm **
  # take first element
  # check if first two characters are "Be"
  # if no, move on to next entry
  # if yes, identify index position in array and return value
# ** Code **
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

# p index_result = flintstones.index { |name| name.match(/Be./) }

p index_result = flintstones.index { |name| name[0..1] == "Be" }
