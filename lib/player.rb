require_relative "game"

class Player

  attr_reader :name, :health, :game
  # x = Player.new("Bert")
  #  => #<Player:0x007f96eb15d4f0 @name="Bert">
  def initialize(name)
    @name = name
    @health = 100
  end
  #new
    # def attack(opponent)
    #   opponent.receive_attack
    # end
    #
    def receive_attack
      @health -= 10
    end




end
