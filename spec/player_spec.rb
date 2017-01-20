require "player"

describe Player do
  player1 = Player.new("Bert")
  player2 = Player.new("Ernie")

    it "Checks for player name" do
      expect(player1.name).to eq("Bert")
    end

  describe '#receive_attack' do
    it "Reduces the other player's health by 10 when attacking" do
      # player1 = Player.new("Bert")
      expect{ player2.receive_attack }.to change {player2.health}.by -10
    end
  end
end
