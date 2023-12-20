# ** Problem **
  # explicit rules: return new array with each integer increased by 1
  #
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
  # take each element of array
  #   take each key/value pair of inner hash
  #     create array with key, integer plus 1
  #   convert result to hash to pass back to outer map

# ** Code **
initial_arr = [
  {a: 1},
  {b: 2, c: 3},
  {d: 4, e: 5, f: 6}
]

new_arr = initial_arr.map do |inner_hash|
  inner_arr = inner_hash.map do |key, value|
    [key, value + 1]
  end
  inner_arr.to_h
end

p new_arr == [{a: 2}, {b: 3, c: 4}, {d: 5, e: 6, f: 7}]