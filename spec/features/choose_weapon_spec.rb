# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Choose weapon' do
	 scenario 'from Rock, Paper or Scissor' do
 		 sign_in_and_play
     expect(page).to have_content 'Rock'
 		 expect(page).to have_content 'Paper'
     expect(page).to have_content 'Scissors'
 	end
end

