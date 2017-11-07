require 'sinatra/base'

class Battle < Sinatra::Base
  set :port, 5000
  enable :sessions


  get '/' do
    erb(:index)
  end

  get '/play' do
    @p1 = session["player1"]
    @p2 = session["player2"]
    erb(:play)
  end

  post '/names' do
    session['player1'] = params["player1"]
    session['player2'] = params["player2"]
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
