class Game

  def initialize
    puts "Let's play!"
    play
  end

  def play
    # Get user's choice:
    puts "What's your choice, Rock, Paper, or Scissors? Enter R, P, or S:"
    user_choice = gets.chomp.to_s.upcase
    puts "You choice was: #{user_choice}"

    # Get computer's choice:
    computer_choice = %w(R P S).sample

    # See who won:
    if user_choice == computer_choice
      puts "Tie"
      puts "Play again!"
      play
    elsif((user_choice == "R" && computer_choice == "S") || (user_choice == "P" && computer_choice == "R") || (user_choice == "S" && computer_choice =="P"))
      puts "You won!"
    else
      puts "Computer won."
    end
  end
end
