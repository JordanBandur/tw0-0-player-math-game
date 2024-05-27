# Player - represent each player. Stores player state such as their name, number of
# lives, and scores.
class Player 
  def initalize(name, score, lives = 3)
    @name = name
    @lives = lives
    @score = 0
  end

  attr_accessor :name, :lives

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

# The Question class is responsible for generating new math problems for the players to solve. 
# It stores the two numbers involved in the problem and can calculate the correct answer.
class Question
  def initalize(num1, num2)
    generate_num
  end

  def generate_num # Generates random numbers between 1 and 20
    @num1 = rand(1..20) 
    @num2 = rand(1..20)
  end

  def correct_answer
    @num1 + @num2
  end
end

# The Game class manages the overall flow of the game, including keeping track of turns,
# checking answers, and determining when the game ends. It switches between players, 
# checks their answers, and announces the winner when the game ends.
class Game 
  def initalize(player1, player2, current_player)
    @player1 = Player.new("Player1")
    @player2 = Player.new("player2")
    @current_player = @player1
  end

  attr_accessor :current_player

  def start 
    while @player1.is_alive && @player2.is_alive
      Question = Question.new
      puts "#{@correct_answer.name}, What is #{question.num1} + #{question.num2}?"
      answer = gets.chomp.to_i # Gets the user input and converts it to an number

      if check_answer(answer, question.correct_answer)
        puts "Correct!"
        @current_player.increment_score
      else
        @current_player.lose_life
        puts "Incorrect! Lives remaining: #{@current_player.lives}"
      end

      display_scores
      switch_turns

    end

    game_over
  end

  def switch_turns
    @current_player = (@current_player == @player1) ? @player2 : @player1
  end

  def check_answer(player_answer, correct_answer)
    player_answer == correct_answer
  end

  def display_scores
    puts "Scores:"
    puts "#{@player1.name}: #{@player1.score} correct answers, #{@player1.lives} lives remaining"
    puts "#{@player2.name}: #{@player2.score} correct answers, #{@player2.lives} lives remaining"
  end

  def game_over
    if !@player1.is_alive
      puts "Game over! #{@player2.name} wins with #{@player2.score} correct answers and #{@player2.lives} lives remaining."
    elsif !@player2.is_alive
      puts "Game over! #{@player1.name} wins with #{@player1.score} correct answers and #{@player1.lives} lives remaining."
  end

end