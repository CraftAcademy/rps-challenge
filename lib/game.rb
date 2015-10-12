class Game

  attr_reader :players, :beats

  def initialize(player, computer)
    @player = player
    @computer = computer

  end

  def player
    @player
  end

  def computer
    @computer
  end

  def drawer
    if self.player.pick == self.computer.pick
      'Draw!'
    else
      'i have no clue'
    end
  end

  def winner
    if self.player.pick ='rock' && self.computer.pick ='scissors'
      'You win!'
    end
  end
end