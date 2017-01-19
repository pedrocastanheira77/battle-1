require 'sinatra/base'
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
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play' # same as an internal GET
  end

  get '/play' do
  @player_1_name = session[:player_1_name]
  @player_2_name = session[:player_2_name]
      erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
