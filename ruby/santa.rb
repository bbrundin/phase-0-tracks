class Santa
    def initialize(gender, ethnicity, name)
      @gender = gender
      @ethnicity = ethnicity
      @name = name
      @age = 0
      puts "Initializing Santa instance ..."
    end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(treat)
    puts "that was a good #{treat}!"
    treat
  end

  def celebrate_birthday
    @age += 1
  end

  def getName
    @name
  end

  def age
    @age
  end

  def ethnicity
    @ethnicity
  end

  def age=(new_age)
    @age = new_age
  end

  def gender=(new_gender)
    @gender = new_gender
  end

  def reindeer_ranking
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
  end

  def get_mad_at(reindeer)  #take reindeer from reindeer ranking and make it index -1
    # for reindeer in reindeer_ranking
    index = [-1]
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
  p santa.getName
  santa.speak
end

santas[0].celebrate_birthday


