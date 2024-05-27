# The Question class is responsible for generating new math problems for the players to solve. 
# It stores the two numbers involved in the problem and can calculate the correct answer.
class Question
  def initialize
    generate_num
  end

  attr_accessor :num1, :num2

  def generate_num # Generates random numbers between 1 and 20
    @num1 = rand(1..20) 
    @num2 = rand(1..20)
  end

  def correct_answer
    @num1 + @num2
  end
end