require './game.rb'

def game_start
  game = Game.new()
  game.create_players
  player_one = game.players[0]
  player_two = game.players[1]

  while(player_one.get_score > 0 && player_two.get_score > 0)
    game.player_turn
  end

  if game.turn == player_two
    puts "Player One Wins!"
  else
    puts "Player Two Wins!"
  end

end

game_start

  