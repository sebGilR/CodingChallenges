def recursive_sum(nums)
  return 0 if nums.empty?

  sum = nums.pop
  return sum + recursive_sum(nums)
end

p recursive_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10])

## CALL STACK
# recursive_sum([]) 0
# recursive_sum([1]) 1
# recursive_sum([1, 2]) 3
# recursive_sum([1, 2, 3]) 6
# recursive_sum([1, 2, 3, 4]) 10
# recursive_sum([1, 2, 3, 4, 5]) 15
# recursive_sum([1, 2, 3, 4, 5, 6]) 21
# recursive_sum([1, 2, 3, 4, 5, 6, 7]) 28
# recursive_sum([1, 2, 3, 4, 5, 6, 7, 8]) 36
# recursive_sum([1, 2, 3, 4, 5, 6, 7, 8, 9]) 45
# recursive_sum([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]) 555