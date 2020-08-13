def recursive_factorial(number)
  return number if number == 1

  number * recursive_factorial(number - 1)
end

p recursive_factorial(5)

# CALL STACK
# recursive_factorial(1) 1
# recursive_factorial(2) 2
# recursive_factorial(3) 6
# recursive_factorial(4) 24
# recursive_factorial(5) 120