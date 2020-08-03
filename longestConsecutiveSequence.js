/**
 * @param {number[]} nums
 * @return {number}
 */
var longestConsecutive = function(nums) {
  if (nums.length < 1) return 0;
  const sorted = nums.sort();
  const visited = {};
  
  let current = sorted[0];
  for (let i = 0; i < sorted.length; i++) {
    if (sorted.includes(i + 1)) {
      visited[current] = visited[current] ? visited[current] + 1 : 1;
    } else {
      current = sorted[i];
      visited[current] = 1;
    }
  }
  
  const result = Object.values(visited)
  return Math.max(...result)
};