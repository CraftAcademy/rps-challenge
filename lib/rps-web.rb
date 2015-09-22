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
		session[:name] = params[:name]
		@player_name = params[:name]
		erb :game
	end

	post '/result' do
		@player_name = params[:name]
		@results = Playgame.play(params[:player_move.downcase])
		erb :result

	end

	run! if app_file == $0

end
