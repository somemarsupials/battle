feature 'Viewing hit points' do
  scenario "can see player 2's hitpoints" do
    visit('/play')

    expect(page).to have_content 'Player 2 HP'
  end

  scenario "can see player 1's hitpoints" do
    visit('/play')

    expect(page).to have_content 'Player 1 HP'
  end
end
