# ** Problem **
  # explicit rules: each element of the array is the key
  #                 index position of the element is its value
  # implicit rules: return a new hash object
  #                 keys should be strings (q)
  # questions: should keys remain the same type (i.e. convert to symbol?)
# ** Examples **
  # test cases:
    # Fred, index 0 => {'Fred' => 0}
    # Barney, index 1 => {'Barney' => 1}
    # BamBam, index 5 => {'BamBam' => 5}
# ** Data **
  # hash for final object, strings for keys
# ** Algorithm **
  # create a new hash
  # take the first element of the array and create a hash key in the new hash
  # assign it to the index value of that element in the array
  # repeat for each element
# ** Code **

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = flintstones.each_with_object({}) do |name, hash|
  hash[name] = flintstones.index(name)
end

p flintstones_hash