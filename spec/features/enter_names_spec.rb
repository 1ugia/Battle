feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player1_name, with: 'Charlotte'
    fill_in :player2_name, with: 'Mittens'
    click_button 'Submit'

    # save_and_open_page

    expect(page).to have_content 'Charlotte vs. Mittens' 
  end
end