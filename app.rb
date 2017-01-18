require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

enable :sessions
game = Game.new

get '/' do
  erb :index
end

post '/names' do
  $player1.name = params[:player_1_name]
  $player2.name = params[:player_2_name]
  redirect '/play'
end

get '/play' do
  erb :play
end

post '/attack' do
  game.attack_player($player2)
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
