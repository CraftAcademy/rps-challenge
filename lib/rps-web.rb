require 'sinatra'
require 'byebug'

class RPSWeb < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views')}
	enable :sessions

	get '/' do 
		erb :index
	end



#class Game

	#def initialize(player, computer)
		
	#	@player = player.new
	#	@computer = computer.new
	
	#end

		
	#def self.computer_move
   	#	%w(Rock Paper Scissors).sample
  	#end

  	#def self.play(player_move)
   	#	computer_move

	#	case move1
	#	when :paper

	#	if player_move == computer_move 
	#		"Draw !"

	#	elsif ((player_move == "Paper" && computer_move == "Stone") || (player_move) == "Scissors" && computer_move == "Paper" || (player_move) == "Stone" && computer_move == "Scissors"))
	#		"You win !"
	#	else
	#		"Sorry, you lose"
	#	end


	run! if app_file == $0

end