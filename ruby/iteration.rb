#def happy_day
# puts "I hope you're having a happy day!"
# yield("Horace", "Barbara")
#end

#happy_day {|person1, person2|puts "It's a lovely day outside #{person1} and #{person2}."}



flavors = ["chocolate", "strawberry", "vanilla", "pistachio"]
desserts = {'cake' => 'vanilla', 'pie' => 'strawberry', 'ice_cream' => 'pistacho', 'candy_bar' => 'chocolate'}

puts flavors
flavors.each do |flavor|
  puts "I love #{flavor}!"
end

puts desserts
desserts.each do |thing, taste|
  puts "I really hate #{thing} especially #{taste}!"
end

puts flavors
flavors.map! do |flavor|
  puts flavor.upcase
end

puts flavors
flavors.select{|flavor| }

flavors.each do |flavor|
  puts flavors.delete_if{|flavor| flavor =="chocolate"}
end

desserts.each do |food, taste|
   puts desserts.delete_if{|food, taste| food =="pie"}
end

flavors.each do
  puts flavors.select{|flavor| flavor =="strawberry"}
end

desserts.map do |food, taste|
   puts desserts.select{|food, taste| food=="cake"}
end




#This is the last one, a method that will remove items from a data structure
flavors.map do |flavor|
flavor.length <= 10

  p flavors.drop_while{|flavor| flavor.length < 10}
end