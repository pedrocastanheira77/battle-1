require 'spec_helper'

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

RSpec.feature 'See Hit points' do
  scenario "2. See player 2's HP" do
    sign_in_and_play
    expect(page).to have_text 'The Terminator HP = 100/100'
  end
end
