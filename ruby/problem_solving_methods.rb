
#Release 0: Implement a Simple Search

arr = [42, 89, 23, 1]

def search_array(arr, num)
  arr.index(num)
end

p search_array(arr, 1)

p search_array(arr, 24)


#Release 1: Calculate Fibonacci Numbers

def fib(num)
  arr = [0, 1]
  while (arr.length < num)
    last_nums = arr[-2..-1]
    new_number = last_nums.first + last_nums.last
    arr.push(new_number)
  end
  arr
end

p fib(6)


p fib(100)


#Release 2: Sort An Array

#Pseudocode-

# First define the set of numbers you will be sorting in array, and define the varible.
# Numbers is descriptive and a good one to use.
# Vary the numbers from large to small so you know your method works!
# Print the method for bubble_sort which is the ultimate action you want completed on your array.
# Define n as array.length or the total amount of items in the array.
# In this case, numbers has an array.length of 7
# Set up your loop swapped value to false, to ensure that it will keep going untill
# there is nothing left to swap.

# The (number.length-1) times a variable - this is where the looping down each
# number in the array begins, to check and compare it to be bigger or smaller to the next.
# if the number being scanned in the array prints as GREATER than the number to the
#   right of it that is number scanned+1, this should be swapped as the number to the
#   right must always be bigger.
#   The next line of code shows the array being equal on both sides.
#   Keep swapping untill this proves to be false.
#   End the method once nothing else needs to be swapped.
#   Print the bubble_sort method with new array of sorted numbers.

numbers = [1,2,3,42,2,1,2]

def bubble_sort(array)
  n = array.length
  loop do
    swapped = false

   (n-1).times do |i|
      if array[i] > array[i+1]
        array[i], array[i+1] = array[i+1], array[i]
        swapped = true
      end
    end

   break if not swapped
  end

 array
end

bubble_sort(numbers)

# #1. We chose Bubble Sort! This sorts numbers comparing them by twos and swapping
# them so the number to the right is bigger. After the fact, I wondered about
# the relevancy of this code when you could just print numbers.sort

#2. Visualization helps me alot when understanding how an algorithm works.
# Also explaining it outloud and/or to someone else and talking through each line
# of code is helpful. My partner send me a link to a tutorial site that visualizes
# the ruby code you entered line by line, up untill the point it stops working, that was
# helpful.

#3. I for sure experience a range of emotions when tackling a coding challenge,
# starting with excitement and curiousity, turning to confusion, ending in rage,
# and then looping back out with relief and happiness when it works. The feelings
# of stress and frusteration I know block my brain from connecting the dots and being
# productive- but they are hard to stop at times!

# 4. Pseudocode above.
# 5. Bubble sort method above.





