require 'player.rb'

describe Player do

  let(:player) { Player.new("David") }

  it 'has a name' do
    	player.name
    	 expect(player.name).to eq "David"
  end

  it 'can pick' do
     player.pick = 'paper'
     expect(player.pick).to eq 'paper'
   end
end
