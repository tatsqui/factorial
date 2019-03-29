# Computes factorial of the input number and returns it
# Time complexity: On^n
# Space complexity: ??
def factorial(number)
  raise ArgumentError, "Bad Value" if number == nil

  return 1 if number == 0 || number == 1

  less = number - 1
  until less == 0
    number *= less
    less -= 1
  end
  return number
end