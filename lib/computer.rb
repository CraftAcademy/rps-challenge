class Computer

  attr_accessor :pick

  def initialize
    @pick = [:rock, :paper, :scissors].sample
  end
  
  def computer_pick
  		rand(1..3)
  end


end


