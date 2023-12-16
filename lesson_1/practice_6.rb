# ** Problem **
  # explicit rules: array should be mutated
  #                 each entry should be truncated to first 3 char
  # implicit rules: should original entries also be mutated vs new object? (Y)
  # clarifying questions: Mutate entries within array or make copies? (mutate)
# ** Examples **
  # Fred => Fre
  # Barney => Bar
  # Wilma => Wil
# ** Data **
  # same array, string slices
# ** Algorithm **
  # take first element
  # delete after 3rd character
  # repeat
  # return original array
# ** Code **
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#mutating elements
flintstones.each { |name| name.slice!(3..-1) }

#returning new
# flintstones.map! { |name| name[0..2] }

p flintstones