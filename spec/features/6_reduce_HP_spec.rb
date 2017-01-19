# As Player 1,
# So I can start to win a game of Battle,
# I want my attack to reduce Player 2's HP


RSpec.feature 'Reduce HP' do #like 'describe'
  scenario "6. Reduce Player 2 HP by 10" do #like 'it'
    sign_in_and_play #see features/web_helpers.rb
    click_button('Attack!')
    click_button('Back!')
    expect(page).to have_content 'The Terminator HP = 90/100'
  end

end
