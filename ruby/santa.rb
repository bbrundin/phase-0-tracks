class Santa
    def initialize(gender, ethnicity, name)
      @gender = gender
      @ethnicity = ethnicity
      @name = name
      puts "Initializing Santa instance ..."
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(treat)
    puts "that was a good #{treat}!"
    treat
  end

  def age
    @age = 0
  end

  def sayName
    puts @name
  end

  def reinder_ranking
    @reinder_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end
end

#Driver Code

# santa.speak
# santa.eat_milk_and_cookies("brownie")


ethnicity = ["black", "white", "mixed", "hawaiian"]
gender = ["female", "male", "fluid", "unicorns"]
name = ["Nick", "Fred", "Luke", "Brad"]

puts "Iterating through Santa ethnicities.."
ethnicity.each do |ethnicity|
  puts "Santas can be #{ethnicity}!"
end

puts "Iterating through Santa genders.."
gender.each do |gender|
  puts "Santas can be #{gender}!"
end

puts "Iterating through Santas who have signed up for SantaCon.."
name.each do |name|
  puts "#{name} has signed up for SantaCon!"
end

santas = []

ethnicity.length.times do |i|
  santas << Santa.new(ethnicity[i], gender[i], name[i])
end

puts "Testing that each Santa instance in the array to make sure they can greet the kiddos.."
santas.each do |santa|
  santa.sayName
  santa.speak
end


