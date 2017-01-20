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
    @attacker_name = $game.attacker_player.name
    @attacked_name = $game.attacked_player.name
    @attacker_health = $game.attacker_player.health
    @attacked_health = $game.attacked_player.health
    erb :play
  end

  get '/attack_msg' do
    @attacked_name = $game.attacked_player.name
    $game.attack
    erb :attack
    end
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
