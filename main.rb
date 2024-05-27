require_relative 'player'
require_relative 'question'
require_relative 'game'

puts "Enter the name of Player 1:"
player1_name = gets.chomp

puts "Enter the name of Player 2:"
player2_name = gets.chomp

game = Game.new(player1_name, player2_name)
game.start