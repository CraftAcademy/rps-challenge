require 'spec_helper'

def enter_name(name)
	visit '/'
  	fill_in 'name', with: name
  	click_button 'Off to the game!'
end


feature 'Getting a new game started' do
  
  	scenario ' - greeting' do
    	visit '/'
    	expect(page).to have_content "Hey, let´s play some Rock, Paper, and Scissors!"
  	end

  	scenario ' - putting in a name' do
  		visit '/'
  		fill_in 'name', with: 'Bosse'
  		click_button 'Off to the game!'
  		expect(page).to have_content 'Hullo, Bosse. Off we go!'
  	end

  	scenario 'player wins with rock over computers scissors' do 
  		enter_name('Bosse')
  		allow(Playgame).to receive(:computer_move).and_return('s')
  		fill_in 'player_move', with: 'r'
  		click_button 'Play'
  		expect(page).to have_content 'You win!'
  	end
 end
