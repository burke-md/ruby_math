class Game
  # attr_accessor :name, :lives
  def initialize(p1, p2)
    puts "\nWelcome player1: #{p1} and player2: #{p2}."
  end  

  def ask_question
    val1 = rand(20)
    val2 = rand(20)
  end  
end  