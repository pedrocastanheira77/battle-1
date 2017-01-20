
class Game

attr_reader :player1, :player2

  def initialize(player1 = Player.new(name), player2 = Player.new(name))
    @player1 = player1
    @player2 = player2
  end

  def attack(opponent)
    opponent.receive_attack
  end

end
