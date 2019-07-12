require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  get '/attack' do
    @game.attack(@game.other_player)
    @game.switch
    if @game.game_over?
      redirect '/game-over'
    else
      erb :attack
    end
  end

  get '/game-over' do
    erb :game_over
  end

 run! if app_file == $0

end
