puts "What's your name?"
name = gets.chomp

puts "State your age?"
age = gets.chomp.to_i

puts "State the year you were born"
year_born = gets.chomp.to_i

puts "Do you want Garlic bread? (y/n)"
garlic = gets.chomp.to_s

puts "Would you like to enroll in company health insurance? (y/n)"
health_insurance = gets.chomp

puts "Do you have any allergies"
allergies = gets.chomp


wolves_like_sunshine = true
wolves_like_garlic = true
vampires_like_sunshine = false
vampires_like_garlic = false

def isYes(str)
  return (str == "yes" || str == "y");
end

def isNo(str)
  return (str == "no" || str == "n");
end

if (name == "Drake Cula" || name == "Tu Fang")
  puts "Definitely a vampire"
elsif allergies == "sunshine"
  puts ""Definitely a vampire""
elsif age < 100 && (isYes(garlic) || isYes(health_insurance))
  puts "Probably not a vampire"
elsif age > 100 && isNo(garlic) && isNo(health_insurance)
  puts "Almost certainly a vampire"
elsif age > 100 && (isNo(garlic) || isNo(health_insurance))
  puts "Probably a vampire"
else
  puts "Results inconclusive"
end


puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."






