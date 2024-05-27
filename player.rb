# Player - represent each player. Stores player state such as their name, number of
# lives, and scores.
class Player 
  def initialize(name, lives = 3)
    @name = name
    @lives = lives
    @score = 0
  end

  attr_accessor :name, :lives, :score

  def lose_life
    @lives -= 1
  end

  def is_alive
    @lives > 0 # last eval. expression is automatically returned 
  end

  def increment_score
    @score += 1
  end
end