# ** Problem **
  # explicit rules: return new array
  #                 only keep hashes with ALL even integers
  # implicit rules: elements of array are hashes
  #
  # clarifying questions: are all integers/arrays w/ int at same level? (Y)
  #

# ** Examples **
  # arr[:a] is gone because 3
  # arr[:b] is gone because arr[:b][c:] has a 3
  # arr[:e] is the only one that stays

# ** Data **
  # array return value, parse nested arrays as hash values

# ** Algorithm **
  # take the each inner hash
  #   take inner arr from inner hash
  #     test if all elements are even
  #     if test returns true, mark inner array as true
  #   test if all inner arr are true
  # if all values of hash are true, keep hash

# ** Code **
arr = [
  {a: [1, 2, 3]},
  {b: [2, 4, 6], c: [3, 6], d: [4]},
  {e: [8], f: [6, 10]}
]

new_arr = arr.select do |inner_hsh|
  inner_hsh.all? do |_, inner_arr|
    inner_arr.all? do |num|
      num.even?
    end
  end
end

p new_arr
