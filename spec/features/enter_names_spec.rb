feature 'Enter name' do
	scenario 'submit names' do
		sign_in_and_play
		expect(page).to have_content 'Dave is playing Rock Paper Scissors!'
	end
end