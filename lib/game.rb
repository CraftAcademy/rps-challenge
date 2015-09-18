module Game

  def self.computer_move
    %w(Rock Paper Scissors).sample
  end

  def self.play(player_move)
    computer_move

    if player_move == computer_move
      "Tie!"
    elsif((player_move == "Rock" && computer_move == "Scissors") || (player_move == "Paper" && computer_move == "Rock") || (player_move == "Scissors" && computer_move =="Paper"))
      "You won!"
    else
      "Computer won."
    end

  end
end
