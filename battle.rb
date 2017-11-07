require 'sinatra/base'

class Battle < Sinatra::Base
  set :port, 5000

  get '/' do
    'You are at Battle root.'
  end
end
