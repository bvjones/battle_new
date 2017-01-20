class Game
  @game = nil
  attr_reader :next_attacker, :next_receiver

  def initialize(player1, player2)
    @players = [player1, player2]
    @next_attacker = @players[1]
    @next_receiver = @players[0]
    # self.class.game = self
  end

  def self.instance #attr reader for game class instance variable- cant use attr_reader
    @game
  end

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def player1
    @players[0]
  end

  def player2
    @players[1]
  end

  def attack_player(player)
    player.receive_attack
    switch_attacker
    switch_receiver
  end

  def switch_attacker
    @next_attacker == player1 ? @next_attacker = player2 : @next_attacker = player1
  end

  def switch_receiver
    @next_receiver == player1 ? @next_receiver = player2 : @next_receiver = player1

  end
end
