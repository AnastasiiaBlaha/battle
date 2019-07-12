feature "Attack player" do

    scenario 'Player2 attacks Player1' do
        sign_in_and_play
        click_link "Attack Player 1"
        expect(page).to have_content "Anastasiia attacked Will"
    end

    scenario 'Player1 attacks Player2' do
        sign_in_and_play
        click_link "Attack Player 2"
        expect(page).to have_content "Will attacked Anastasiia"
    end

end