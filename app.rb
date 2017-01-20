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
    $player_1 = Player.new([:player_1_name])
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
    Game.new.attack($player_2)
    erb :attack
    end
    # start the server if ruby file executed directly
    run! if app_file == $0
  end
