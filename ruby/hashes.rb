# #Interior Design Co. Client Details

# Prompt the designer for client name
#   save name as hash :name
# Prompt the designer for client age
#   save age as hash :client_age
# Prompt the designer for number of children
#   save children number as hash :children_num
# Prompt the designer for decor theme
#   save decor theme as hash :decor_theme
# Prompt the designer for likes nautical theme (y/n)
#   save nautical pref as hash :nautical_pref

# Prompts designer to enter if they have finished filling out info
# If finished == "yes"
# prints data back to screen when designer has filled info

#   if all info is not correct, updates client details


puts "Hello! Please enter your client info."

client = {}
puts "What is your client's name?"
      client[:name] = gets.chomp
puts "What is thier age?"
      client[:age] = gets.chomp
puts "How many children?"
      client[:children_num] = gets.chomp
puts "Two words to describe their decor theme?"
      client[:decor_theme] = gets.chomp
puts  "Likes nautical? (y/n)"
      client[:nautical_pref] = gets.chomp

puts "please confirm you are finished"
      client[:finished] = gets.chomp

#if finished == "yes"
#  puts "Thank you!"
#    else puts "please start again"
#end

puts client

