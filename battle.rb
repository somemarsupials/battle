require 'sinatra/base'

class Battle < Sinatra::Base
  set :port, 5000

  get '/' do
    erb(:index)
  end

  post '/opening' do
    @p1 = params["player1"]
    @p2 = params["player2"]
    erb(:opening)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
