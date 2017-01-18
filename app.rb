require 'sinatra/base'
require 'sinatra'
require './lib/player.rb'

class Battle < Sinatra::Base

enable :sessions
$player1 = Player.new
$player2 = Player.new
$player1.score = 100
$player2.score = 100

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
  $player2.score -= 10
  erb :play
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
