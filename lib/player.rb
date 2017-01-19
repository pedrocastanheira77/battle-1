class Player

  attr_reader :name, :receive_attack, :health
  # x = Player.new("Bert")
  #  => #<Player:0x007f96eb15d4f0 @name="Bert">
  def initialize(name)
    @name = name
    @health = 100
  end

  def receive_attack
    @health -= 10
  end



end
