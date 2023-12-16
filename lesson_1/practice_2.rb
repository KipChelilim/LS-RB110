# ** Problem **
  # explicit rules: sum ages from hash
  #
  # implicit rules: ages are values in the hash
  #
# ** Examples **
  # Herman + Lily = 62
  # Herman + Lily + Grandap = 5905
# ** Data **
  # integer return value, enumerable, array of values
# ** Algorithm **
  # convert all keys to an array
  # add together all array values
# ** Code **
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

sum_of_ages = ages.values.sum

puts sum_of_ages