require 'player.rb'

describe Player do

  let(:player) { Player.new("David") }

  it 'has a name' do
    	player.name
    	 expect(player.name).to eq "David"
  end

  it 'can pick Paper' do
     player.pick = 'paper'
     expect(player.pick).to eq 'paper'
  end

  it 'can pick Rock' do
    player.pick = 'rock'
    expect(player.pick).to eq 'rock'
  end

  it 'can pick Scissors' do
    player.pick = 'scissors'
    expect(player.pick).to eq 'scissors'
  end
end

