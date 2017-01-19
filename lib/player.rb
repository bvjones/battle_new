class Player
DEFAULT_POINTS = 100
attr_reader :name, :score

  def initialize(name, score = DEFAULT_POINTS)
    @name = name
    @score = score
  end

  def receive_attack
    @score -= 10
  end

end
