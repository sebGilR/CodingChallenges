# O(nlogn)
def merge_sort(arr)
  return arr if arr.length == 1
  
  middle = (arr.length / 2).floor
  left = merge_sort(arr[0...middle])
  right = merge_sort(arr[middle...arr.length])

  merge(left, right)
end

def merge(arr1, arr2)
  merged = []
  i = 0
  j = 0

  while i < arr1.length && j < arr2.length
    if arr1[i] <= arr2[j]
      merged << arr1[i]
      i += 1
    else
      merged << arr2[j]
      j += 1
    end
  end

  merged.concat(arr1[i..-1]) if i < arr1.size
  merged.concat(arr2[j..-1]) if j < arr2.size

  merged
end

p merge_sort([4, 3, 5, 1, 0, 7, 10, 2])
