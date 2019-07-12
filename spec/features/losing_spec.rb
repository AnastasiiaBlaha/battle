feature 'losing' do
  scenario 'to see a lose message if I reach 0 hp first' do
    attack_eleven_times
    click_link 'Attack'
    expect(page).to have_content 'Anastasiia loses!'
  end
end