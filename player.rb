
class Player
  attr_accessor :score, :name

  def initialize(player_name)
    @score = 3
    @name = player_name
  end

  def get_score
    @score
  end

  def score_decrement
    @score -= 1
  end

end
