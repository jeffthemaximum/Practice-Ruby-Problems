# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
#
# Difficulty: medium.

=begin
def third_greatest(nums)
  nums = nums.sort
  if (nums.length < 5)
    return nums[nums.length - 3]
  else
    return nums[2]
  end
end
=end

def third_greatest(nums)
  first = second = third = 0
  
  i = 0
  while (i < nums.length)
    value = nums[i]
    if (value > first)
      third = second
      second = first
      first = value
    elsif (value > second)
      third = second
      second = value
    elsif (value > third)
      third = value
    end
    i += 1
  end
  return third
end


# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'third_greatest([5, 3, 7]) == 3: ' +
  (third_greatest([5, 3, 7]) == 3).to_s
)
puts(
  'third_greatest([5, 3, 7, 4]) == 4: ' +
  (third_greatest([5, 3, 7, 4]) == 4).to_s
)
puts(
  'third_greatest([2, 3, 7, 4]) == 3: ' +
  (third_greatest([2, 3, 7, 4]) == 3).to_s
)
