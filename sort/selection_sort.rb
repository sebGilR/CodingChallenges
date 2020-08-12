# O(n^2)
def selection_sort(arr)
  n = arr.length

  for i in 0...n
    for j in i + 1...n
      arr[j], arr[i] = arr[i], arr[j] if  arr[i] > arr[j]
    end
  end

  arr
end

p selection_sort([4, 3, 5, 1, 0, 7, 10, 2])
