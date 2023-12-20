# ** Problem **
  # explicit rules: return new array
  #                 keep same subarrays as original
  #                 order them logically by only considering odd numbers
  # implicit rules: do not change order of elements in sub arrays
  #                 treat evens as though they do not exist (shorter arrays)
  # clarifying questions:
  #

# ** Examples **
  # expected return => [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]
  # [6, 1, 7] <=> [1, 6, 9] is actually [1, 7] <=> [1, 9]
  # [1, 5, 9] <=> [6, 1, 7] is actually [1, 5, 9] <=> [1, 7]
# ** Data **
  # arrays w/ integer comparision

# ** Algorithm **
  # take sub array & sort by even-less subarray => sort_by
  #   remove even values from sub-array         => select
  #   return new sub arrays without even values => select

# ** Code **
arr = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

new_arr = arr.sort_by do |sub_arr|
  sub_arr.select do |num|
    num.odd?
  end
end

p new_arr == [[1, 8, 3], [1, 5, 9], [6, 1, 7], [1, 6, 9]]