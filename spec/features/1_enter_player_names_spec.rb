require 'spec_helper' # don't need to write this here as created a .rspec which has already required spec_helper

RSpec.feature 'Enter player names' do #like 'describe'
  scenario '1. Enter players 1 (Predator) and 2 (The Terminator)' do #like 'it'
    sign_in_and_play #see features/web_helpers.rb
    expect(page).to have_text 'Predator VS The Terminator'
  end
end
