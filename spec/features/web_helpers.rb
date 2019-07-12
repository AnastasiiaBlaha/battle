def sign_in_and_play
  visit('/')
  fill_in :player_1_name, with: 'Will'
  fill_in :player_2_name, with: 'Anastasiia'
  click_button 'Submit'
end

def attack_eleven_times
  sign_in_and_play
  10.times do
    click_link "Attack"
    click_link "Back"
  end
end