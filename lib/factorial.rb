# Computes factorial of the input number and returns it
# Time complexity: On!
# Space complexity: Constant
def factorial(number)
  raise ArgumentError, "Bad Value" if number == nil

  return 1 if number == 0 || number == 1

  minus_one = number - 1
  until minus_one == 0
    number *= minus_one
    minus_one -= 1
  end
  return number
end