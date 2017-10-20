// Returns a function
function add(x) {
  return function(y) {
    return x + y
  }
}

// Takes a callback function
function each(list, callback) {
  for (var i = 0; i < list.length; i++) {
    callback(list[i])
  }
}

// Example of calling the functions
add(1)(2)
each([1, 2, 3], console.log)
