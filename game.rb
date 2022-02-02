require './player.rb'
require './question.rb'

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

  def ask_question
    question = Question.new()
    question.generate_question
    puts question.question
    question.get_response
    question.check_answer
  end

end

game = Game.new()
game.create_players
puts game.players[0].score
game.ask_question
  
