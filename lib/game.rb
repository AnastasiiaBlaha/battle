class Game

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @players = [player_1, player_2]
    @current_turn = player_1
  end
  
  def self.instance
    @game
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def player_1
    @player_1
  end

  def player_2
    @player_2
  end

  def attack(player)
      player.reduce_hit_points
  end

  def current_turn
    @current_turn
  end

  def switch
    if @current_turn == @player_1 
       @current_turn = @player_2
    else 
      @current_turn = @player_1
    end
  end

  def other_player
    temp = [@player_1, @player_2]
    temp -= [@current_turn]
    temp[0]
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  def losing_players
    @players.select { |player| player.hit_points <= 0}
  end
end
