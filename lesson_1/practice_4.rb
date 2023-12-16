# ** Problem **
  # explicit rules: lowest value is selection criteria
  #                 select only one item
  # implicit rules: return the lowest age, not the entry(?)
  #
  # clarifying questions: should we just return the value? (assume yes)
  #
  #
# ** Examples **
  # Eddie => yes
  # all others => no
# ** Data **
  # return array of hash entry, then last element
  # final return should be integer value
# ** Algorithm **
  # select hash, and identify value
  # select next hash entry and compare value to prior entry
  # if first value is lower, keep first value, otherwise keep current value
  # repeat until all entries compared
  # return the value from final entry
# ** Code **
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

p ages.min.last