require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'
require './lib/game.rb'


class Battle < Sinatra::Base

enable :sessions

before do
  @game = Game.instance
end

get '/' do
  erb :index
end

post '/names' do
  player1 = Player.new(params[:player_1_name])
  player2 = Player.new(params[:player_2_name])
  @game = Game.create(player1, player2)
  redirect '/play'
end

get '/play' do
  erb :play
end

post '/attack' do
  @game.attack_player(@game.next_attacker)
  erb :attack_message
end

get '/attack_message' do
  redirect '/play'

end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
