class Game

  def initialize(player1, player2)
    @players = [player1, player2]
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack_player(player)
    player.receive_attack
  end
end
