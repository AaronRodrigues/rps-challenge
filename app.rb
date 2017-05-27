require 'sinatra/base'
# require 'rps'

class Rps < Sinatra::Base
  get '/' do
    'Testing infrastructure working'
    erb:index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end