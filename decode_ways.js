// A message containing letters from A-Z is being encoded to numbers using the following mapping:

// 'A' -> 1
// 'B' -> 2
// ...
// 'Z' -> 26
// Given a non-empty string containing only digits, determine the total number of ways to decode it.

// Input: "226"
// Output: 3
// Explanation: It could be decoded as "BZ" (2 26), "VF" (22 6), or "BBF" (2 2 6).

const decode = (s, currentIndex, total, dp) => {
  if (currentIndex >= s.length) return 1;

  let firstN = parseInt(s[currentIndex], 10);

  if (firstN === 0) {
    return 0;
  } else if (currentIndex === s.length - 1) {
    return 1;
  }

  if(dp[currentIndex] === undefined) {
    let secondN = parseInt(s[currentIndex + 1], 10);
    let combination = (firstN * 10) + secondN;

    total = decode(s, currentIndex + 1, total, dp);

    if (26 >= combination) {
      total += decode(s, currentIndex + 2, total, dp);
    }

    dp[currentIndex] = total;
  }

  return dp[currentIndex];
}

var numDecodings = function(s) {
if (!s) return 0;
let total = 0;
let dp = {};
  
return decode(s, 0, total, dp);
};

console.log(numDecodings(226));