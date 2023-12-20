# ** Problem **
  # explicit rules: take 2 layer array, sort the values of nested arrays
  #                 sort in descending order
  #                 return a new array
  # implicit rules:
  #
  # clarifying questions: order the nested arrays or their elements? (elements)
  #
  #

# ** Examples **
  #

# ** Data **
  #

# ** Algorithm **
  # take each subarray
  #   take each element of subarray
  #   sort in descending order
  #   replace org subarray with sorted subarray

# ** Code **
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

sorted_arr = arr.map do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end

p sorted_arr