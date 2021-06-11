feature 'View hit points' do
  scenario 'See Player 2 hit points' do
    visit('/')
    fill_in :player1_name, with: 'Charlotte'
    fill_in :player2_name, with: 'Mittens'
    click_button 'Submit'
    expect(page).to have_content 'Mittens: 60HP'
  end
end
