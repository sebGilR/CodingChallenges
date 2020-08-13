def nth_fibonacci(number)
  return number if number < 2

  nth_fibonacci(number - 1) + nth_fibonacci(number - 2)
end

p nth_fibonacci(6)

# CALL STACK
# nth_fibonacci(1) 1
# nth_fibonacci(2) 1
# nth_fibonacci(3) 2
# nth_fibonacci(4) 3
# nth_fibonacci(5) 5
# nth_fibonacci(6) 8