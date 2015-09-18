module Game

  def self.computer_move
    %w(R P S).sample
  end

  def self.player_move(player_move)
    computer_move

    if player_move == computer_move
      "Tie!"
    elsif((player_move == "R" && computer_move == "S") || (player_move == "P" && computer_move == "R") || (player_move == "S" && computer_move =="P"))
      "You won!"
    else
      "Computer won."
    end

  end
end
