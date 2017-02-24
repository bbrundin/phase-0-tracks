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

puts "Hello! Please enter your client info."

client = {}
puts "What is your client's name?"
      client[:name] = gets.chomp

puts "What is your client's age?"
      client[:age] = gets.chomp.to_i

puts "How many children does your client have?"
      client[:children_num] = gets.chomp

puts "Enter two words to describe their decor theme?"
      client[:decor_theme] = gets.chomp

puts  "Does your client like nautical? (y/n)"
      client[:nautical_pref] = gets.chomp


#print initial print of client intake by printing hash to the screen

puts "Thank you, here is what we've gathered!"
p client


#   if all info is not correct, asks for confirmation to updates client details

puts "Would you like to make any changes to your entry?"
  response = gets.chomp

  if response == "no"
    puts "Great. Here is a summary of your original report."
      p client
  else
    puts "Sure! Please input your new answer"
      answer = gets.chomp
      client[response.to_sym] = answer
      puts client
  end

