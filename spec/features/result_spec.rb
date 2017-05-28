
feature 'Player chooses Rock' do
  scenario 'computer chooses rock' do 
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'TIE!'
  end
end