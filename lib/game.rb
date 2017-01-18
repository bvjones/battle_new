class Game

  def initialize
    $player1 = Player.new
    $player2 = Player.new
    $player1.score = 100
    $player2.score = 100
  end

def attack_player(player)
  player.score -= 10
end

end
