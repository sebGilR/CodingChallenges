# O(n^2)
def bubble_sort(arr)
  n = arr.length

  for i in 0...n - 1
    swapped = false
  
    for j in 0...n - i - 1
      arr[j], arr[j + 1] = arr[j + 1], arr[j] if arr[j] > arr[j + 1]
      swapped = true
    end

    break if !swapped
  end

  return arr
end

p bubble_sort([4, 3, 5, 1, 0, 7, 10])