require 'spec_helper'


RSpec.feature 'Attack' do

  # As Player 1,
  # So I can win a game of Battle,
  # I want to attack Player 2, and I want to get a confirmation

  scenario "3.1 Attack player 2" do
    sign_in_and_play
    click_button('Attack!')
    expect(page).to have_content 'You have attacked The Terminator'
  end

  # As Player 1,
  # So I can lose a game of Battle,
  # I want Player 2 to attack me, and I want to get a confirmation

    scenario "3.2 Attack player 1" do
      sign_in_and_play
      click_button('Attack!')
      click_button('Back!')
      click_button('Attack!')
      expect(page).to have_content 'You have attacked Predator'
    end

    scenario "4. Go back to the start page" do
      sign_in_and_play
      click_button('Attack!')
      click_button('Back!')
      expect(page).to have_content 'The Terminator VS Predator'
    end

end
