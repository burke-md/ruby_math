class Game
  attr_accessor :current_turn, :next_turn
  def initialize(player1, player2)
    @current_turn = player1
    @next_turn = player2
  end  



  def ask_question
    val1 = rand(20)
    val2 = rand(20)
    puts "#{current_turn.name}: What is #{val1} plus #{val2}?"
    print "> "
    user_answer = gets.chomp.to_i
    answer = val1 + val2
    user_answer == answer
  end  

end  