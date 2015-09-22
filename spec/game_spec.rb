require './lib/game.rb'

describe Playgame do 
	
	it 'player wins with rock over computers scissors' do
		allow(Playgame).to receive(:computer_move).and_return('s')
		result = Playgame.play('r')
		expect(result).to eq "You win!"
	end

	it 'player wins with scissors over computers paper' do
		allow(Playgame).to receive(:computer_move).and_return('p')
		result = Playgame.play('s')
		expect(result).to eq "You win!"
	end

	it 'player looses with scissors over computers rock' do
		allow(Playgame).to receive(:computer_move).and_return('r')
		result = Playgame.play('s')
		expect(result).to eq "Sorry, man, you lose!"
	end

	it 'it is a tie if player move == computer move' do 
		allow(Playgame).to receive(:computer_move).and_return('r')
		result = Playgame.play('r')
		expect(result).to eq "It\'s a tie"
	end
end