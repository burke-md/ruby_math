require './player'
require './game'

player1 = Player.new("Mike")
player2 = Player.new("Brianna")

game = Game.new(player1.name, player2.name)

puts game

puts "\n--- player 1 has lost the round ---"
player1.lost_round

puts "--- player 1 ---"
puts "#{player1.lives}/3"
puts player1.name


