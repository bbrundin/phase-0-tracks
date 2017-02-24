sandiego_zoo = {
    panda_canyon: {
        animal_name: 'Panda',
        visitor_info: {
            total_parents: 40,
            total_kids: 22
        },
        exhibits: [
            "Baby Pandas On The Run",
            "Mating Season Mayhem"
        ]
    },
    elephant_odyssey: {
        animal_name: 'Elephant',
        visitor_info: {
            total_parents: 28,
            total_kids: 16
        },
        exhibits: [
            "Elephant Training Demo",
            "Inside the Brain of the Biggest Mammal"
        ]
    },
    amphibian_house: {
        animal_name: 'Snake',
        visitor_info: {
            total_parents: 32,
            total_kids: 15
        },
        exhibits: [
              "Meet a Reptile Keeper"
          ]
    }
}


sandiego_zoo[:panda_canyon][:animal_name]

# prints 'Panda'

sandiego_zoo[:panda_canyon][:visitor_info]

#prints panda canyon visitor info of total parents and kids

sandiego_zoo[:elephant_odyssey][:exhibits].push("Elephant Bath Time")

#added a new elephant exhibit to the program.

sandiego_zoo[:amphibian_house][:animal_name].upcase

#printed SNAKE in all cap letters

sandiego_zoo[:amphibian_house][:visitor_info][:total_parents]

#printed the number of parents in the amphibian house