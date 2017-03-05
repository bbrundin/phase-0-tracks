# module Shout
#    def self.yell_angrily(words)
#     words + "!!!" + " :("
#   end

#   def self.yelling_happily(words)
#     words + "!!!" + " :)"
#   end
# end

# #Initialize driver code

# p Shout.yell_angrily("Wah")
# p Shout.yelling_happily("Yay")

module Shout

  def yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(words)
    words + "!!!" + " :)"
  end

end

class Teacher
  include Shout
end

class Student
  include Shout
end

teacher = Teacher.new
p teacher.yell_angrily("students")
p teacher.yelling_happily("students")

student = Student.new
p student.yell_angrily("teacher")
p student.yelling_happily("teacher")



