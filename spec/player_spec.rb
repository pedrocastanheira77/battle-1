require "player.rb"

describe Player do
  player1 = Player.new("Bert")
    it "5. Checks for player name" do
      expect(player1.name).to eq("Bert")
    end

    it "6. Reduces the other player's health by 10 when attacking" do
      player1 = Player.new("Bert")
      player2 = Player.new("Ernie")
      expect{ player2.receive_attack }.to change {player2.health}.by -10
    end
end



# scenario "6. Reduce Player 2 HP by 10" do #like 'it'
#   sign_in_and_play #see features/web_helpers.rb
#   click_button('Attack!')
#   click_button('Back!')
#   expect(page).to have_content 'The Terminator HP = 90/100'
