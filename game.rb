require './player.rb'
require './question.rb'

class Game
  attr_accessor :players, :turn

  def initialize
    @players = []
    @turn = ''

  end

  def create_players
    player_one = Player.new('Player One')
    @players << player_one

    player_two = Player.new('Player Two')
    @players << player_two

    @turn = player_two
  end

  def ask_question(player)
    question = Question.new()
    question.generate_question
    puts question.question
    question.get_response
    !question.check_answer && player.score_decrement
  end

  def player_turn

    player_one = players[0]
    player_two = players[1]
    if @turn == player_one
      @turn = player_two
      puts "Turn: #{@turn.name}"
      puts "Score: #{@turn.score}"
    else
      @turn = player_one
      puts "Turn: #{@turn.name}"
      puts "Score: #{@turn.score}"
    end
    ask_question(@turn)
  end

end

