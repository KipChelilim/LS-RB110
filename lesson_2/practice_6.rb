# ** Problem **
  # explicit rules: print "_ is a _-year-old _."
  #                 print for all members of family
  #                 in order: name - age - gender
  # implicit rules:
  #
  # clarifying questions:
  #
  #
# ** Examples **
  # first entry: Herman is a 32-year-old male.
  # second entry: Lily is a 30-year-old female.
# ** Data **
  #
# ** Algorithm **
  # take each entry:
  #   access the key of outer hash and value of inner hash
  #   access keys of inner hash
  #   interpolate values for outer key and inner keys
  #   print sentence with interpolated values
# ** Code **
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |munster, details|
  puts "#{munster} is a #{details["age"]}-year-old #{details["gender"]}."
end
