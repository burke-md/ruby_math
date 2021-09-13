require './player'

player1 = Player.new("Mike")
player2 = Player.new("Brianna")

puts "\n--- player 1 has lost the round ---"
player1.lost_round

puts "--- player 1 ---"
puts "#{player1.lives}/3"
puts player1.name


puts "--- player 2 ---"
puts "#{player2.lives}/3"
puts player2.name