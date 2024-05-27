# Player - represent each player. Stores player state such as their name, and number of
# lives.
class Player 
  def initalize(name, lives = 3)
    @name = name
    @lives = lives
  end

  attr_accessor :name, :lives

  def lose_life
    @lives -= 1
  end

  def is_alive
    @lives > 0 # last eval. expression is automatically returned 
  end
end

class Question
  def initalize(num1, num2)
    generate_num
  end

  def generate_num
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def correct_answer
    @num1 + @num2
  end
end
