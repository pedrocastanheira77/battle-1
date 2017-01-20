# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP

# As Player 1,
# So I can start to lose a game of Battle,
# I want Player 2's attack to reduce my HP

RSpec.feature 'Reduce HP' do
  scenario "5. Reduce Player 2 HP by 10" do
    sign_in_and_play
    click_button('Attack!')
    click_button('Back!')
    expect(page).to have_content 'The Terminator HP = 90/100'
  end

end
