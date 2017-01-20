require_relative "game"

class Player

  attr_reader :name, :health
  DEFAULT_HP = 100
  DAMAGE_VALUE = 10  

  def initialize(name, health = DEFAULT_HP)
    @name = name
    @health = health
  end

  def receive_attack
    @health -= DAMAGE_VALUE
  end

end
