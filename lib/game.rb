
module Playgame

	def self.computer_move
    	%w(r p s).sample
  	end

	def self.play(player_move)

		computer = computer_move
		
		case[player_move, computer]

			when ['p','r'], ['s','p'], ['r','s']

				play_result = "You win!"

			when ['p','p'], ['s','s'], ['r','s']

	    		play_result = "It\'s a tie"

			else 
	 
	 			play_result = "Sorry, man, you lose!"
	
		end
	
	end	

end