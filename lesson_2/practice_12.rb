# ** Problem **
  # explicit rules: can't use to_h
  #                 return a new hash
  #                 key is first item in subarray, value is second item
  # implicit rules:
  #
  # clarifying questions:
  #

# ** Examples **
  #

# ** Data **
  #

# ** Algorithm **
  # initialize empty hash
  # take each element in array
  #   create element 0 as key in hash, with element 1 as value

# ** Code **
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]

hsh = {}
arr.each do |nested_arr|
  hsh[nested_arr[0]] = nested_arr[1]
end

p hsh == {:a=>1, "b"=>"two", "sea"=>{:c=>3}, {:a=>1, :b=>2, :c=>3, :d=>4}=>"D"}