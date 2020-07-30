var containsDuplicate = function(nums) {
  let obj = {}
  
  for (let i = 0; i < nums.length; i += 1) {
    if (obj.hasOwnProperty(nums[i])) {
      return true;
    } else {
      obj[nums[i]] = nums[i]
    }
  }
  
  return false
};