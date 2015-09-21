require 'sinatra'
require 'byebug'



class RPSWeb < Sinatra::Base

	set :views, proc { File.join(root, '..', 'views')}
	enable :sessions

	get '/' do 
		erb :index
	end


	post '/game' do
		session[:name] = params[:name]
		erb :game
	end

	post '/result' do
		session[:name] = params[:name]
		@results = params[:play_result]
		erb :result

	end

	run! if app_file == $0

end
