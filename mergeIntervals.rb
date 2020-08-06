# @param {Integer[][]} intervals
# @return {Integer[][]}
def merge(intervals)
  result = []
  i = 0
  
  intervals.sort! { |a, b| a[0] - b[0] }
  
  while i < intervals.size
    prev_i = result.last
    current_i = intervals[i]
    next_i = intervals[i + 1]
    
    if result.empty? || !overlap?(prev_i, current_i)
      result << current_i
    else
      result[-1] = merge_pair(prev_i, current_i)
    end
    i += 1
  end
  
  result
end

def merge_pair(a, b)
  [[a[0], b[0]].min(), [a[1], b[1]].max()]
end

def overlap?(a, b)
  return false if b.nil? || a.nil?
  a[0] <= b[1] && b[0] <= a[1]
end
