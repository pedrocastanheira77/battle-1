
class Game
  attr_reader :player1, :player2

  def initialize(player1 = Player.new(name), player2 = Player.new(name))
    @player1 = player1
    @player2 = player2
    @players = [player1, player2]
    @switcher = 0
  end

  def attacker_player
    @players[@switcher]
  end

  def attacked_player
    @players[@switcher-1]
  end

  def attack
    attacked_player.receive_attack
    switch_turns
  end

  def switch_turns
    if @switcher == 0
      @switcher = 1
    else
      @switcher = 0
    end
  end
end
