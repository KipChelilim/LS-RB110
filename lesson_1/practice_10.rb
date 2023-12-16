# ** Problem **
  # explicit rules: add a new entry to each subhash
  #                 key is age_group, possible keys are "adult", "senior", "kid"
  #                 kid is 0-17, adult is 18-64, senior is 65 +
  # implicit rules:
  #
  # clarifying questions:
  #
  #
# ** Examples **
  #
# ** Data **
  #
# ** Algorithm **
  # select each key from munsters hash
  # for each key, check what age group they are in
    # implementation notes: each munsters, value[key]
  # based on age, assign new key to corresponding age
    # implementation notes: if else structure w/ value[age]
  # return modified array
# ** Code **
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# Before looking at hint

# munsters.each do |_, subhash|
#   if subhash["age"] <= 17
#     subhash["age_group"] = "kid"
#   elsif subhash["age"].between?(18,64)
#     subhash["age_group"] = "adult"
#   else
#     subhash["age_group"] = "senior"
#   end
# end

# Case statement version after looking at hint

munsters.each do |_, subhash|
  case subhash["age"]
  when (0..17)        then subhash["age_group"] = "kid"
  when (18..64)        then subhash["age_group"] = "adult"
  else                     subhash["age_group"] = "senior"
  end
end

p munsters