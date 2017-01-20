require 'sinatra/base'
require 'shotgun'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base
  enable :sessions # to keep state - one session hash per user session
  set :session_secret, 'super secret'

  get '/' do
    'Hello Battle!'
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    $game = Game.new(player_1, player_2)
    redirect '/play' # same as an internal GET
  end

  get '/play' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    @player_1_health = $game.player1.health
    @player_2_health = $game.player2.health
    erb :play
  end

  get '/attack_msg' do
    @player_1_name = $game.player1.name
    @player_2_name = $game.player2.name
    $game.attack($game.player2)
    erb :attack
    end
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
