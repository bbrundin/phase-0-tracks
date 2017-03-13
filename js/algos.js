// Release 0

// psuedocode

// we must create an array that accepts strings

// we must call for a function that measures .length of every word in array

// create a for loop that loops through each word in the array and measures length

// returns the longest string in the array


var words = ["hello", "hi", "howdy", "hola", "how you doin"];

var abc = ["a", "b", "c", "abc"];

function checkLongestWord(arr) {
  var i;
  var checkLength = 0;
  var checkIndex = 0;
  for (i = 0; i < arr.length; i++) {
    var word = arr[i];
    var length = word.length;
    if (length > checkLength) {
      checkLength = length;
      checkIndex = i;
    }
  }
  return arr[checkIndex];
}

console.log(checkLongestWord(words));
console.log(checkLongestWord(abc));

// Release 1

// create a function that passes through two objects as parameters
// each object has a key, value pair
// we must compare keys in each object
// if key1 is equal to key 2 and value 1 is equal to value 2
//   return true if true
// else return false

// print new instance of findKeyValueMatch function
// add Steven, age 54
// add Tamir age 54

// these share an age value so loop will catch value 1 == value 2 and return true

// end


function findKeyValueMatch(obj1, obj2) {
  for (var key1 in obj1) {
    for (var key2 in obj2) {
      var value1 = obj1[key1];
      var value2 = obj2[key2];
      if (key1 == key2 && value1 == value2) {
        return true;
      }
    }
  }
  return false;
}

console.log(findKeyValueMatch({name: "Steven", age: 54}, {name: "Tamir", age: 54}));

