# As two Players,
# So we can continue our game of Battle,
# # We want to switch turns

feature 'switch turns' do
  scenario "6.1 Switch turns from player 1 to player 2" do
    sign_in_and_play
    click_button('Attack!')
    click_button('Back!')
    expect(page).to have_content 'The Terminator VS Predator'
  end

  scenario "6.2 See player 1's HP" do
    sign_in_and_play
    click_button('Attack!')
    click_button('Back!')
    expect(page).to have_text 'Predator HP = 100/100'
  end
end
