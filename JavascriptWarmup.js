function sumOfSquares(num) {
  var sum = 0;
  for(var i = 1; i <= num; i++) {
    sum += (i*i);
  }
  return sum;
}

function squareOfSums(num) {
  var sum = 0;
  for(var i = 1; i <= num; i++) {
    sum += i;
  }
  return sum * sum;
}
  
function difference(num) {
  return squareOfSums(num) - sumOfSquares(num);
}

console.log(sumOfSquares(100) - squareOfSums(100))

