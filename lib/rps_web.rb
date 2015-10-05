require 'sinatra'
require './lib/rps_game.rb'
require 'byebug'
require 'rubygems'
require 'RPSApp'

run Sinatra::Application

class RPSApp < Sinatra::Base

  set :views, proc { File.join(root, '..', 'views')}
  enable :sessions

  get '/' do
    erb :index
  end

  run! if app_file == $0
end