feature 'Reduce hit points' do
    scenario 'reduce Player 2\'s hit points when attacked' do
        sign_in_and_play
        click_link "Attack"
        click_link "Back"
        expect(page).to have_content '50HP'
    end
end
