# O(n^2)
def quicksort(arr, start_i = 0, end_i = arr.length - 1)
  if start_i < end_i
    piv = partition(arr, start_i, end_i)
    quicksort(arr, start_i, piv - 1)
    quicksort(arr, piv + 1, end_i)
  end

  arr
end

def partition(arr, start_i, end_i)
  piv = arr[end_i]

  j = start_i
  for i in start_i...end_i
    if arr[i] < piv
      arr[i], arr[j] = arr[j], arr[i]

      j += 1
    end
  end

  arr[j], arr[end_i] = arr[end_i], arr[j]

  j
end

p quicksort([1, 3, 9, 8, 2, 7, 5])
