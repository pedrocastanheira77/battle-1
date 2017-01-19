require 'sinatra/base'
require './lib/player'
require './lib/game'
# set :session_secret, 'super secret'

# run with ruby app.rb or shotgun ruby.rb
# - accessed via 'http://localhost:4567/' ?
class Battle < Sinatra::Base
  enable :sessions # to keep state - one session hash per user session


  get '/' do
    'Hello Battle!'
    erb :index
  end

  post '/names' do
    # $player_1_name = Player.new(params[:player_1_name])
    # $player_2_name = Player.new(params[:player_2_name])
    $player_1 = Player.new(params[:player_1_name])
    $player_2 = Player.new(params[:player_2_name])

    redirect '/play' # same as an internal GET
  end

  get '/play' do
  @player_1_name = $player_1.name
  @player_2_name = $player_2.name

  @player_1_health = $player_1.health
  @player_2_health = $player_2.health
      erb :play
  end

  get '/attack_msg' do
  @player_1_name = $player_1.name
  @player_2_name = $player_2.name

  # @player_2_health = $player_2_name.receive_attack
  # $player_1.attack($player_2)
  Game.new.attack($player_2)


  # @player_1_health
  # @player_2_health
      erb :attack
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
