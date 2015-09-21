require 'player.rb'

describe Player do

  let(:player){Player.new("David")}
  
  it 'has a name' do
    player.name
    expect(player.name).to eq "David"
  end

  it 'can take a turn' do
    player.pick("paper")
    expect(player.pick("paper")).to eq "paper"
  end
  
end


require "player"

	describe Player do 
	let(:player) { Player.new }

  it 'should have a name' do 
    player.name = 'David'
    expect(player.name).to eq 'David'

  end 

  it 'should make a move' do
    player.move = "rock"
    expect(player.move).to eq 'rock' 
  end

end

#I want player to have a name (David)
#I want player to be able to make a move in this case rock