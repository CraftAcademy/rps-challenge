
module Playgame

	def self.computer_move
    	%w(r p s).sample
  	end

	def self.play(player_move)

		computer = computer_move
		
		case[player_move, computer]

			when ['p','r'], ['s','p'], ['r','s']

				"You win!"

			when ['p','p'], ['s','s'], ['r','s']

	    		 "It\'s a tie"

			else 
	 
	 			"Sorry, man, you lose!"
	
		end
	
	end

	
	

end