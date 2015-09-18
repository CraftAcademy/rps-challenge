require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, proc {File.join(root, '..', 'views')}
  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:name] = params[:name]
     if session[:name] == ""
      erb :index
    else
      erb :play
    end
  end

  post '/result' do
    session[:name] = params[:name]
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
