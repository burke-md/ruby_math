require './player'
require './game'

def play_game
player1 = Player.new("Michael")
player2 = Player.new("George")
game = Game.new(player1, player2)

  while player1.lives >= 1 && player2.lives >= 1 do
    puts "--- NEW TURN ---"
    if game.ask_question
      puts "Correct answer #{game.current_turn.name}!"
      puts "#{player1.name}: #{player1.lives}/3 VS #{player2.name}: #{player2.lives}/3 "
    else 
      puts "Incorrect #{game.current_turn.name}"
      game.current_turn.lost_round
      puts "#{player1.name}: #{player1.lives}/3 VS #{player2.name}: #{player2.lives}/3 "
    end

      temp = game.current_turn
      game.current_turn = game.next_turn
      game.next_turn = temp

  end

  if player1.lives > 0
    puts "#{player1.name} wins with a score of #{player1.lives}/3"
  end  
  if player2.lives > 0
    puts "#{player2.name} wins with a score of #{player2.lives}/3"
  end 

  puts "--- GAME OVER ---"
  puts "Good bye!"
end


play_game



