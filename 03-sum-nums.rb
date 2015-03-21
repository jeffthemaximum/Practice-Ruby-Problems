# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
#
# Difficulty: easy.

def sum_nums(num)
  x = 0
  idx = 0
  while idx <= num
    x = x + idx
    idx += 1
  end
  return x
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts('sum_nums(1) == 1: ' + (sum_nums(1) == 1).to_s)
puts('sum_nums(2) == 3: ' + (sum_nums(2) == 3).to_s)
puts('sum_nums(3) == 6: ' + (sum_nums(3) == 6).to_s)
puts('sum_nums(4) == 10: ' + (sum_nums(4) == 10).to_s)
puts('sum_nums(5) == 15: ' + (sum_nums(5) == 15).to_s)


=begin
ALT SOLUTION

def sum_nums(num)
  
  i = num - 1
  sum = num
  
  while i > 0
    sum = sum + i
    i -= 1
  end
  return sum
end

=end