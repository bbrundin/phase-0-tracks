
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
  new_list = grocery_list(list)
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


