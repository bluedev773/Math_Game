require './player.rb'

class Game
  attr_accessor :players

  def initialize
    @players = []
  end

  def create_players
    puts 'creating player one'
    player_one = Player.new()
    @players << player_one

    puts "creating player two"
    player_two = Player.new()
    @players << player_two
  end

end

# game = Game.new()
# game.create_players
# puts game.players[2].score
  
