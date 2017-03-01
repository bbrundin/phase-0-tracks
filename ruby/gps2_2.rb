
# Release 0: Pseudocode

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # Create a hash for grocery list items
  # Set items to split
  # set default quantity of 1 of each item
  # print the list to the console [create method to output the list]
  # return grocery list

# Method to add an item to a list- create method called add_to_list
# input: list, item name, and optional quantity
# steps: add_new_item ("carrot" => 1)
#iterate through new list
# output: new list items added to master list with quantity

# Method to remove an item from the list- create method called remove_from_list
# input: called out item by listing item
# steps: use .delete(item) to remove
# output: item shoudl be removed from master list
# print new master list at end

# Method to update the quantity of an item- create method called update_quantity
# input: try using .push to call out item and edit it from outside of the method
# steps: call out item on list and new quantity
# print updated version with master list

# Method to print a list and make it look pretty- grocery_final
# input: add some user friendly prompts and turn list into a string by iterating through each
# item on the list
# output: the fully updated, printable list with updated quanitity in string format.


# Release 1: First Attempt at a Grocery List (Initial Solution)

# def grocery_list(items)
#     grocery_list = {}
#     items = items.split(" ")
#     items.each do |item|
#         grocery_list[item] = 1
#     end
#     return grocery_list
# end

#   p grocery_list = {}
#   items = items.split(" ")
# new_item.each do |new_item, qty|
#     grocery_list[item] = qty
#   end
# end

# def remove_from_list(list, item)
#   list.delete(item)
#   print(list)
# end

# def update_quanity(list, item, new_qty)
# p list[item]= [new_qty]
# print(list)
# end

# def print(list)
# puts "Here is your list!"
# p list

# p action_list = grocery_list("carrots apples cereal pizza")
# add_to_list("carrots apples cereal pizza", "grapes", 4)



# Release 2: Test your solution / our refactored code

def grocery_list(items)
  grocery_list = {}
  items = items.split(" ")
  items.each do |item|
    grocery_list[item] = 1
  end
  return grocery_list
end

def add_to_list(list, item_name, qty)
if list.class == Hash
new_list = list
else
  new_list = grocery_listist)
end
if qty == "none"
  qty = 1
end
new_list[item_name] = qty
print(new_list)
end

def remove_from_list(list, item)
  list.delete(item)
  print(list)
end

def update_quanity(list, item, new_qty)
p list[item]= [new_qty]
print(list)
end

def print(list)
  p list
end

list = grocery_list("carrots apples cereal pizza")

add_to_list(list, "Lemonade", 2)
add_to_list(list, "Tomatoes", 3)
add_to_list(list, "Onions", 1)
add_to_list(list, "Ice Cream", 4)

remove_from_list(list, "Lemonade")

update_quanity(list, "Ice Cream", 1)

print(list)

#Release 4: Reflect

=begin
1. I didnt realize psuedocode could be so actionable. Although it is
sentence structure base, you can still use words like IF and LOOP.
2. I prefered hashes for this challenge, as they were able to store and
maniupulate the data that we were using more.
3. A method returns the last declared variable. This is why it's important
to use implicit return, and declare that value at the end that you wish
to return.
4.Methods can hold arrays, hashes, strings, and other methods.
5. Information is passed between methods by defining the method and then
calling this definition in the next method.
6. Methods within methods is still confusing. Calling between methods is still confusing
I plan to review a lot more with methods.
=end



