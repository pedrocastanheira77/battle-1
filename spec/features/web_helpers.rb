# DRY up code with helpers

def sign_in_and_play

  visit('/')
  fill_in :player_1_name, with: 'Predator'
  fill_in :player_2_name, with: 'The Terminator'
  click_button 'Submit'

end
