class Player

  attr_reader :name
  # x = Player.new("Bert")
  #  => #<Player:0x007f96eb15d4f0 @name="Bert">
  def initialize(name)
    @name = name
  end

end
