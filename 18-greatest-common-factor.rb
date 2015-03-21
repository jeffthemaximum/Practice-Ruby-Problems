# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
#
# Difficulty: medium.

def greatest_common_factor(number1, number2)
  factor = 0
  gcf = 0
  i = 1
  
  if (number2 < number1)
    number1, number2 = number2, number1
  else
    while (i <= number1)
      if (number1 % i == 0 && number2 % i == 0)
        gcf = i
      end
      i+=1
    end
  end    
  return gcf
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'greatest_common_factor(3, 9) == 3: ' +
  (greatest_common_factor(3, 9) == 3).to_s
)
puts(
  'greatest_common_factor(16, 24) == 8: ' +
  (greatest_common_factor(16, 24) == 8).to_s
)
puts(
  'greatest_common_factor(5, 3) == 1: ' +
  (greatest_common_factor(5, 3) == 1).to_s
)
