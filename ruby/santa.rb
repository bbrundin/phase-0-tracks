class Santa

  attr_reader :ethnicity
  attr_accessor :age, :gender

  def initialize(gender, ethnicity)
    #passed in
    @gender = gender
    @ethnicity = ethnicity

    #defaults
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance ..."
  end

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(treat)
    puts "that was a good #{treat}!"
  end

  def celebrate_birthday
    @age += 1
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete(reindeer)
    @reindeer_ranking.push(reindeer)
  end

end

#Driver Code
gender = ["Female", "Male", "Fluid", "Unicorn", "Agender"]
ethnicity = ["Black", "White", "Mixed", "Hawaiian", "Latino", "Japanese", "Arcadian"]

100.times do |i|
  santa = Santa.new(gender.sample, ethnicity.sample)
  santa.age = rand(140)
  p "Santa's gender is #{santa.gender} and ethnicity is #{santa.ethnicity} and their age is #{santa.age}"
end

