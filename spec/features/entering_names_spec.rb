feature 'Adds names on screen' do
  scenario 'fills in player 1' do
    visit('/')
    fill_in('player1', with: 'theo' )
    fill_in('player2', with: 'robert' )
    click_button('Submit')
    expect(page).to have_content 'theo vs. robert'
  end
end
