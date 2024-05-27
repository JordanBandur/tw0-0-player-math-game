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

