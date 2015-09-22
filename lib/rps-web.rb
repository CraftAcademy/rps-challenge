require 'sinatra'
require 'byebug'
require './lib/game.rb'



class RPSWeb < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views')}
	enable :sessions

	get '/' do 
		erb :index
	end


	post '/game' do
		session[:player_name] = params[:player_name]
		@player_name = params[:player_name]
		erb :game
	end

	post '/result' do
		@player_name = params[:player_name]
		@player_move = params[:player_move]
		@results = Playgame.play(@player_move.downcase)
		erb :result

	end

	run! if app_file == $0

end
