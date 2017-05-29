# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
ROCK_SEED = 221561
feature 'Choose weapon' do
	 scenario 'from Rock, Paper or Scissor' do
 		 sign_in_and_play
     expect(page).to have_content 'Rock'
 		 expect(page).to have_content 'Paper'
     expect(page).to have_content 'Scissors'
 	end
end

feature 'Player chooses Rock' do
  scenario 'computer chooses rock' do 
    srand(ROCK_SEED)
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'Rock'
  end
end
