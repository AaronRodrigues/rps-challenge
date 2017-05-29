require 'sinatra/base'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    'Testing infrastructure working'
    erb :index
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb :play
  end

  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/result' do   
    $game = Game.new
     erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end