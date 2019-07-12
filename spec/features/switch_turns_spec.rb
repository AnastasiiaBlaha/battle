feature 'Seeing turns' do
    scenario 'switching turns' do
        sign_in_and_play
        expect(page).to have_content "Will's turn:"
    end

    scenario 'after Player 1 attacks' do
        sign_in_and_play
        click_link "Attack Player 2"
        click_link "Back"
        expect(page).to have_content "Anastasiia's turn:"
    end

end
