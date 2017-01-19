require 'spec_helper' # don't need to write this here as created a .rspec which has already required spec_helper

RSpec.feature 'Enter player names' do #like 'describe'
  scenario '1. Enter players 1 (Bert) and 2 (Ernie)' do #like 'it'
    sign_in_and_play #see features/web_helpers.rb
    expect(page).to have_text 'Bert VS Ernie'
  end
end
