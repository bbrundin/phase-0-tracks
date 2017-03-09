
var colors = ["blue", "purple", "pink", "red"];

var horses = ["Sparkles", "Zoe", "Mini", "Violet"];

console.log(horses[0]);

colors.push("green");
horses.push("Spot");


console.log(horses);
console.log(colors);
//
// #loop of horses
for (var i = 0; i < horses.length; i++) {
  console.log(horses[i]);
}

var horse_info = {name: 'Sparkles', colors: 'blue'};


// horse_colors = {
//   name: 'Sparkles', color: 'blue',
//   name: 'Zoe', color:'purple',
//   name: 'Mini', color: 'pink',
//   name: 'Violet', color: 'red',
//   name: 'Spot', color: 'green',
// }


horse_colors = {
   'Sparkles': 'blue',
   'Zoe': 'purple',
   'Mini': 'pink',
   'Violet': 'red',
   'Spot': 'green',
}


console.log(horse_colors);



// console.log(horse_colors


console.log("The horse's name is " + horse_info['name'] + " and it's color is " + horse_info['colors'] + ".");



var horses = 'name';
console.log(horse_info[horses]);

var horses = 'colors';
console.log(horse_info[horses]);




// var dog = {name: 'Spot', 'age': 3, isGoodDog: true};

// console.log("The dog's name is " + dog['name'] + ".");

// console.log("The dog's name is " + dog.age + ".");
