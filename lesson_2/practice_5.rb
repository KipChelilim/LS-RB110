# ** Problem **
  # explicit rules: sum "age" values if "gender" value is male
  #
  # implicit rules:
  #
  # clarifying questions:
  #
  #
# ** Examples **
  # should be 444
# ** Data **
  # hash references
# ** Algorithm **
  # initialize total age variable
  # take first family member and get inner hash
  # add age to total age variable if gender is male
  # repeat
# ** Code **
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_age = 0

munsters.each do |key, value|
  total_age += value["age"] if value["gender"] == "male"
end

puts "The total age of the male members is #{total_age}."