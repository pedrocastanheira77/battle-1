# As a Player,
# So I can Lose a game of Battle,
# I want to see a 'Lose' message if I reach 0HP first

feature 'display a Lose message' do

  scenario "shows a Lose message if player reaches 0HP" do
    sign_in_and_play
    19.times do
      click_button('Attack!')
      click_button('Back!')
    end
    expect(page).to have_content 'The Terminator LOSE!'
  end

end
