require 'spec_helper'

RSpec.feature 'Enter player names' do
  scenario '1. Enter players 1 (Predator) and 2 (The Terminator)' do
    sign_in_and_play
    expect(page).to have_text 'Predator VS The Terminator'
  end
end
