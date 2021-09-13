class Player 
  attr_accessor :name, :lives
  def initialize(name)
    self.name = name
    self.lives = 3
  end  

  def lost_round
    puts "lost-round has been called"
    self.lives -= 1
  end  
end  