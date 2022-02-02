
class Player
  attr_accessor :score

  def initialize
    @score = 3
  end

  def score_decrement
    @score -= 1
  end

  def score_increment
    @score += 1
  end

end

# player = Player.new
# puts player.score
# puts player.score_decrement
# puts player.score_increment