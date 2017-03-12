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



// Release 2