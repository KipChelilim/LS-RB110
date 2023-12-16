# ** Problem **
  # explicit rules: equal to or greater than 100
  #                 keep all other entries
  # implicit rules: modify the original hash (Q)
  # clarifying questions: return a new hash or modify original?
  #                       should we do anything with removed value?
  #                       return the modified array as result?
# ** Examples **
  # Grandpa should be removed
  # all others should remain
# ** Data **
  # hash
# ** Algorithm **
  # pick hash entry and look at value
  # remove entry if value is >= 100
  # repeat with remaining entries
# ** Code **
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

ages.delete_if { |_, value| value >=100 }

p ages