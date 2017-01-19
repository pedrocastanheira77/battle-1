require 'spec_helper'

# As Player 1,
# So I can win a game of Battle,
# I want to attack Player 2, and I want to get a confirmation

RSpec.feature 'Attack' do #like 'describe'
  scenario "3. Attack player 2" do #like 'it'
    sign_in_and_play #see features/web_helpers.rb
    click_button('Attack!')
    expect(page).to have_content 'You have attacked The Terminator'
  end
  scenario "4. Go back to the start page" do
    sign_in_and_play #see features/web_helpers.rb
    click_button('Attack!')
    click_button('Back!')
    expect(page).to have_content 'Predator VS The Terminator'
  end

end
