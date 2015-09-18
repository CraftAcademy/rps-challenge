require 'sinatra/base'

class RockPaperScissorsb < Sinatra::Base
  get '/' do
    'Hello RockPaperScissorsb!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
