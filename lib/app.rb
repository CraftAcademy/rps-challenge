require 'sinatra/base'
require './lib/game.rb'
require 'byebug'

class App < Sinatra::Base
  set :views, proc {File.join(root, '..', 'views')}
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    if params[:player_name] == ''
      erb :index
    else
      @player_name = params[:player_name]
      session[:player_name] = params[:player_name]
      erb :play
    end
  end

    post '/result' do
    if params[:player_move] == ''
      erb :play
    else
      @player_name = session[:player_name]
      @player_move = params[:player_move]
      @result = Game.play(@player_move)
      erb :result
    end
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
