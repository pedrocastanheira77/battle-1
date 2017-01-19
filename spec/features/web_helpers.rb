# DRY up code with helpers

def sign_in_and_play

  visit('/')
  fill_in :player_1_name, with: 'Bert'
  fill_in :player_2_name, with: 'Ernie'
  click_button 'Submit'

end
