require 'spec_helper'

# As Player 1,
# So I can see how close I am to winning
# I want to see Player 2's Hit Points

RSpec.feature 'See Hit points' do #like 'describe'
  scenario "2. See player 2's HP" do #like 'it'
    sign_in_and_play #see features/web_helpers.rb
    expect(page).to have_text 'Ernie HP = 100'
  end
end
