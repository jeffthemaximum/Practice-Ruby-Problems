# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
#
# Difficulty: medium.

def dasherize_number(num)

  num_string = num.to_s
  num_array = []
  i = 0
  
  while (i < num_string.length)
    test_num_int = num_string[i].to_i
    if ((test_num_int % 2) == 1 && i == 0)
      test_num_string = test_num_int.to_s
      test_num_string = test_num_string + "-"
    elsif((test_num_int %2) == 1) && (i == num_string.length - 1)
      test_num_string = test_num_int.to_s
      test_num_string = "-" + test_num_string
    elsif((test_num_int %2) == 1)
      test_num_string = test_num_int.to_s
      test_num_string = "-" + test_num_string + "-"
    else
      test_num_string = test_num_int.to_s
    end
    num_array[i] = test_num_string
    return_string = num_array.join()
    i += 1
  end
  return return_string
end

# These are tests to check that your code is working. After writing
# your solution, they should all print true.

puts(
  'dasherize_number(203) == "20-3": ' +
  (dasherize_number(203) == '20-3').to_s
)
puts(
  'dasherize_number(303) == "3-0-3": ' +
    (dasherize_number(303) == '3-0-3').to_s
)
puts(
  'dasherize_number(333) == "3-3-3": ' +
  (dasherize_number(333) == '3-3-3').to_s
)
puts(
  'dasherize_number(3223) == "3-22-3": ' +
  (dasherize_number(3223) == '3-22-3').to_s
)
