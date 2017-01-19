require "player.rb"

describe Player do
  player1 = Player.new("Bert")
    it "5. Checks for player name" do
      expect(player1.name).to eq("Bert")
    end
end
