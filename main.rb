require_relative 'tw0-0-player-math-game'

puts "Enter the name of Player 1:"
player1_name = gets.chomp

puts "Enter the name of Player 2:"
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.start