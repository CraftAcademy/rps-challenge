class Game

  attr_reader :players

  def initialize(player, computer)
    @player = player
    @computer = computer
    @players = [player, computer]
    @beats = {
    "rock" => ["paper"],
    "paper" => ["scissors"],
    "scissors" => ["rock"], }
 end

  def player
    @player
  end

  def computer
    @computer
  end

  def winner 
    return "You win!" if @beats[computer.pick].include? @player.pick
  end

  def drawer
    return "Draw!" if @player.pick == @computer.pick
  end

  def loser
    return "Lost!" if @beats[@player.pick].include? @computer.pick
  end 
end

