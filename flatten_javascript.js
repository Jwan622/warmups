function flatten(array) {
  array.reduce(function(a, b){
    return a.concat(b);
  });
}


console.log(flatten([1,2,3]))
