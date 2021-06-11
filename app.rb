# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    # 'Testing infrustructure working!'
    erb(:index)
  end

  post '/names' do 
    # session[:player1_name] = params[:player1_name]
    # session[:player2_name] = params[:player2_name]
    # created new Play class to input name under $player.
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect'/play'
  end # 'redirect' will forward to info to the page you want the info to reach

  get '/play' do
    # @player1_name = session[:player1_name]
    # @player2_name = session[:player2_name]
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:play)
  end

  get '/attack' do
    # @player1_name = session[:player1_name]
    # @player2_name = session[:player2_name]
    @player1_name = $player1.name
    @player2_name = $player2.name
    erb(:attack)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
