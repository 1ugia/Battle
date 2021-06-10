# in app.rb

require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    # 'Testing infrustructure working!'
    erb(:index)
  end

  post '/names' do 
    @player1_name = params[:player1_name]
    @player2_name = params[:player2_name]
    erb(:play)
  end

  # post 

  # start the server if ruby file executed directly
  run! if app_file == $0
end
