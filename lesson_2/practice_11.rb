# ** Problem **
  # explicit rules:
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
  # take nested array
  # select elements within the array that are multiples of 3
  # replace the nested array with the selected values

# ** Code **
arr = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_arr = arr.map do |nested_arr|
  nested_arr.select do |int|
    int % 3 == 0
  end
end

p new_arr == [[], [3, 12], [9], [15]]