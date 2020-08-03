const convert = n => {
  let binary = '';
  let temp = n;
  
  while (temp > 0) {
    if (temp % 2 === 0) {
      binary = '0' + binary;
    } else {
      binary = '1' + binary;
    }
    
    temp = Math.floor(temp / 2);
  }
  
  return binary
}

var getSum = function(a, b) {
  return convert(b) | convert(a)
};
// Failing