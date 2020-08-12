# O(n^2)
def insertion_sort(arr)
  n = arr.length
  for i in 1...n
    j = i

    while j > 0
      if arr[j - 1] > arr[j]
        arr[j], arr[j - 1] = arr[j - 1], arr[j]
      else
        break
      end

      j -= 1
    end
  end

  arr
end

p insertion_sort([4, 3, 5, 1, 0, 7, 10, 2])
